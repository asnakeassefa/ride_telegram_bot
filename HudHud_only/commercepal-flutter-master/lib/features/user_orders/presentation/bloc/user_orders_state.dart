
import 'package:commercepal/features/user_orders/data/models/user_orders_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_orders_state.freezed.dart';

@freezed
class UserOrdersState with _$UserOrdersState {
  const factory UserOrdersState.init() = UserOrdersStateInit;
  const factory UserOrdersState.loading() = UserOrdersStateLoading;
  const factory UserOrdersState.error(String msg) = UserOrdersStateError;
  const factory UserOrdersState.orders(List<UserOrder> orders) = UserOrdersStateOrders;
}
