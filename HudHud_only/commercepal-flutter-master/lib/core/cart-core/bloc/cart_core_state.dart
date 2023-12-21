

import 'package:commercepal/core/cart-core/domain/cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_core_state.freezed.dart';

@freezed
class CartCoreState with _$CartCoreState {
  const factory CartCoreState.init() = CartCoreStateInit;
  const factory CartCoreState.error( String errorMessage ) = CartCoreStateError;
  const factory CartCoreState.loading() = CartCoreStateLoading;
  const factory CartCoreState.success(String success) = CartCoreStateSuccess;
  const factory CartCoreState.cartItems( List<CartItem> product ) = CartCoreStateData;
  const factory CartCoreState.loginUser(  ) = CartCoreStateLoginUser;
  const factory CartCoreState.checkOutUser(  ) = CartCoreStateCheckOutUser;
}
