import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:commercepal/app/utils/string_utils.dart';
import 'package:commercepal/core/cart-core/domain/cart_item.dart';
import 'package:commercepal/core/cart-core/repository/cart_repository.dart';
import 'package:commercepal/core/customer_loan/domain/customer_loan_repo.dart';
import 'package:commercepal/features/customer_loan/data/new_priced_product.dart';
import 'package:commercepal/features/customer_loan/data/prices_summary.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import 'customer_loan_state.dart';

@injectable
class CustomerLoanCubit extends Cubit<CustomerLoanState> {
  final CartRepository cartRepository;
  final CustomerLoanRepo customerLoanRepo;
  final List<NewPricedProduct> newPricedProducts = [];
  bool _tcChecked = false;
  num? _deliveryFee = 0;
  PricesSummary? _pricesSummary;

  CustomerLoanCubit(this.cartRepository, this.customerLoanRepo)
      : super(const CustomerLoanState.init());

  void fetchNewPricedProducts(num markId) async {
    try {
      emit(const CustomerLoanState.loading("Calculating new prices"));
      // get cart items
      newPricedProducts.clear();
      final List<CartItem> cartItems = await cartRepository.getCartItems();
      // get delivery fee
      _deliveryFee = await customerLoanRepo.getDeliveryFee();

      // fetch new prices for cartItem
      final merchantIds = [];
      for (var element in cartItems) {
        // if (merchantIds.contains(element.merchantId)) {
        //   // delivery fee already included for this merchant
        //   newPrice = await customerLoanRepo.newProductPrice(
        //       markId, num.tryParse(element.price!)!);
        // } else {
        //   // include delivery fee
        //   merchantIds.add(element.merchantId);
        //   newPrice = await customerLoanRepo.newProductPrice(
        //       markId, num.tryParse(element.price!)! + _deliveryFee!);
        // }

        num newPrice = await customerLoanRepo.newProductPrice(
            markId, num.tryParse(element.price!)!);

        newPricedProducts.add(NewPricedProduct(element, {
          "new_price": newPrice,
          "new_total": element.quantity! * newPrice
        }));
      }

      // calculate new prices
      final currency = newPricedProducts.first.cartItem.currency;
      // includes delivery fee
      final beforeMarkUp = newPricedProducts
              .map(
                  (e) => e.cartItem.quantity! * double.parse(e.cartItem.price!))
              .fold(0.0,
                  (previousValue, element) => previousValue + element.toDouble()) +
          _deliveryFee!;
      // delivery fee included in product
      final afterMarkUp = newPricedProducts
          .map((e) =>
              e.cartItem.quantity! *
              double.parse(e.extraData['new_price'].toString()))
          .fold(0.0, (previousValue, element) => previousValue + element.toDouble()) + _deliveryFee!;

      _pricesSummary = PricesSummary(
          newPricedProducts
              .map(
                  (e) => e.cartItem.quantity! * double.parse(e.cartItem.price!))
              .fold(0.0,
                  (previousValue, element) => previousValue + element.toDouble())
              .formatCurrency(currency),
          _deliveryFee.formatCurrency(currency),
          beforeMarkUp.formatCurrency(currency),
          afterMarkUp.formatCurrency(currency));

      emit(CustomerLoanState.products(newPricedProducts, _pricesSummary!));
    } catch (e) {
      emit(CustomerLoanState.error(e.toString()));
    }
  }

  void updateTermsAndConditions(bool value) {
    _tcChecked = value;
  }

  void submitOrder(num? markId) async {
    try {
      if (_tcChecked == false) {
        throw "Please accept our terms and conditions";
      }
      emit(const CustomerLoanState.loading("Creating your order"));
      final response = await customerLoanRepo.createLoanOrder(markId!);

      emit(CustomerLoanState.success(response));
    } catch (e) {
      emit(CustomerLoanState.displayError(e.toString()));
      // retains previous state
      emit(CustomerLoanState.products(newPricedProducts, _pricesSummary!));
    }
  }
}
