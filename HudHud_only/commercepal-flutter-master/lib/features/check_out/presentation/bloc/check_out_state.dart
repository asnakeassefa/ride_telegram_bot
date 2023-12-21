import 'package:commercepal/core/cart-core/domain/cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/address.dart';

part 'check_out_state.freezed.dart';

@freezed
class CheckOutState with _$CheckOutState {
  const factory CheckOutState.init() = CheckOutStateInit;

  const factory CheckOutState.loading() = CheckOutStateLoading;

  const factory CheckOutState.error(String message) = CheckOutStateError;

  const factory CheckOutState.success(String message) = CheckOutStateSuccess;

  const factory CheckOutState.addresses(List<Address> message) =
      CheckOutStateAddresses;

  const factory CheckOutState.cartItems(List<CartItem> message) =
      CheckOutStateItems;

  const factory CheckOutState.totalAmount(String totalAmount) =
      CheckOutStateAmount;

  const factory CheckOutState.shippingFee(String totalAmount) =
      CheckOutStateShippingFee;

  const factory CheckOutState.isUserBusiness(bool isBusiness) =
      CheckOutStateBusiness;
}
