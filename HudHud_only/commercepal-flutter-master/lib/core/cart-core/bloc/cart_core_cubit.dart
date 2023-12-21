import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:commercepal/core/cart-core/bloc/cart_core_state.dart';
import 'package:commercepal/core/cart-core/domain/cart_item.dart';
import 'package:injectable/injectable.dart';

import '../../../features/login/domain/login_repository.dart';
import '../repository/cart_repository.dart';

@injectable
class CartCoreCubit extends Cubit<CartCoreState> {
  final CartRepository cartRepository;
  final LoginRepository loginRepository;

  CartCoreCubit(this.cartRepository, this.loginRepository)
      : super(const CartCoreState.init()) {
    _listenForCartUpdates();
  }

  _listenForCartUpdates() async {
    cartRepository.listenToCartUpdates().handleError((error) {
      emit(CartCoreState.error(error.toString()));
    }).listen((event) {
      if (event.isEmpty) {
        emit(const CartCoreState.error("No items added"));
      } else {
        emit(CartCoreState.cartItems(event));
      }
    });
  }

  void addCartItem(CartItem cartItem) async {
    try {
      cartRepository.addToCart(cartItem);
    } catch (error) {
      emit(CartCoreState.error(error.toString()));
    }
  }

  void deleteItem(CartItem cartItem) async {
    try {
      await cartRepository.deleteItem(cartItem);
      emit(CartCoreState.success("${cartItem.name} removed from cart"));
      getItems();
    } catch (error) {
      emit(CartCoreState.error(error.toString()));
    }
  }

  void getItems() async {
    try {
      final items = await cartRepository.getCartItems();
      emit(CartCoreState.cartItems(items));
    } catch (error) {
      emit(CartCoreState.error(error.toString()));
    }
  }

  void changeCartItemQuantity(CartItem cartItem, quantity) async {
    await Future.delayed(const Duration(seconds: 1));
    cartItem.quantity = quantity;
    await cartRepository.updateItemInCart(cartItem);
  }

  void isUserLoggedIn() async {
    final isUserLoggedIn = await loginRepository.isUserLoggedIn();
    if (!isUserLoggedIn) {
      emit(const CartCoreState.loginUser());
    } else {
      emit(const CartCoreState.checkOutUser());
    }

    // restore to items state, so as to view items after redirecting
    getItems();
  }
}
