import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:commercepal/app/utils/string_utils.dart';
import 'package:commercepal/core/session/domain/session_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/cart-core/domain/cart_item.dart';
import '../../../../core/cart-core/repository/cart_repository.dart';
import '../../data/models/address.dart';
import '../../domain/check_out_repo.dart';
import 'check_out_state.dart';

@injectable
class CheckOutCubit extends Cubit<CheckOutState> {
  final CheckOutRepo checkOutRepo;
  final CartRepository cartRepository;
  final SessionRepo sessionRepo;
  final List<CartItem> _cartItems = [];
  String? _orderRef;
  Address? _selectedAddress;
  num? _deliveryFee;

  // make true to avoid fetching addresses before isBusiness state is emitted
  bool _isUserBusiness = true;

  CheckOutCubit(this.checkOutRepo, this.cartRepository, this.sessionRepo)
      : super(const CheckOutState.init());

  void getHomePageData() async {
    await checkIfUserBusiness();
    await getCartItems();
    await getOrderRef();
    // if user is business, calculate delivery fee without address
    if (!_isUserBusiness) {
      fetchAddresses();
    } else {
      calculateDeliveryFee();
    }
  }

  Future checkIfUserBusiness() async {
    _isUserBusiness = await sessionRepo.hasUserSwitchedToBusiness();
    emit(CheckOutState.isUserBusiness(_isUserBusiness));
  }

  Future<void> getCartItems() async {
    final cartItems = await cartRepository.getCartItems();
    _cartItems
      ..clear()
      ..addAll(cartItems);
    emit(CheckOutState.cartItems(_cartItems));

    calculateTotal();
  }

  void calculateTotal() async {
    try {
      if (_cartItems.isEmpty) return;
      final total = (_cartItems
                  .map((e) => e.quantity! * double.parse(e.price!))
                  .fold(0.0,
                      (previousValue, element) => previousValue + element) +
              (_deliveryFee ?? 0))
          .toString();
      emit(CheckOutState.totalAmount(
          total.formatCurrency(_cartItems[0].currency)));
    } catch (e) {
      log(e.toString());
      emit(const CheckOutState.error("Unable to calculate order total"));
    }
  }

  void fetchAddresses() async {
    try {
      emit(const CheckOutState.loading());
      final addresses = await checkOutRepo.fetchAddresses();
      emit(CheckOutState.addresses(addresses));
    } catch (e) {
      emit(CheckOutState.error(e.toString()));
    }
  }

  void markAddressAsSelected(int id, List<Address> adds) async {
    emit(const CheckOutState.init());
    // reset
    for (var element in adds) {
      element.selected = false;
    }
    adds.where((element) => element.id == id).first.selected = true;
    emit(CheckOutState.addresses(adds));
  }

  Future<void> getOrderRef() async {
    try {
      _orderRef = await checkOutRepo.generateOrderRef();
    } catch (e) {
      emit(CheckOutState.error(e.toString()));
    }
  }

  void setSelectedAddress(Address address) {
    _selectedAddress = address;
    calculateDeliveryFee();
  }

  void calculateDeliveryFee() async {
    try {
      if (_orderRef == null) return;
      // only do this check if user is customer
      if (_selectedAddress == null && !_isUserBusiness) return;
      _deliveryFee = await checkOutRepo.getDeliveryFee(
          _orderRef!, _selectedAddress?.id?.toInt());
      emit(
          CheckOutState.shippingFee("${_cartItems[0].currency} $_deliveryFee"));
      // recalculate total
      calculateTotal();
    } catch (e) {
      emit(CheckOutState.error(e.toString()));
    }
  }

  void validateCheckOut() {
    try {
      // check if address is selected if user is not business
      if (_selectedAddress == null && !_isUserBusiness) {
        throw 'Select one shipping address to continue';
      }
      // check if order check out is a success
      if (_orderRef == null) {
        throw 'Unable to check out. Order ref not generated! Kindly try again';
      }

      if (_deliveryFee == null) {
        throw 'Unable to calculate delivery fee.Kindly try later';
      }
      emit(const CheckOutState.success("Good to go"));
    } catch (e) {
      emit(CheckOutState.error(e.toString()));
    }
  }
}
