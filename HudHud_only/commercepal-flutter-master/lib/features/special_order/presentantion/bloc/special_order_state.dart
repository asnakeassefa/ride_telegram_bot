import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/special_orders_dto.dart';

part 'special_order_state.freezed.dart';

@freezed
class SpecialOrderState with _$SpecialOrderState {
  const factory SpecialOrderState.init() = SpecialOrderStateInit;

  const factory SpecialOrderState.loading() = SpecialOrderStateLoading;

  const factory SpecialOrderState.error(String msg) = SpecialOrderStateError;

  const factory SpecialOrderState.success(String msg) =
      SpecialOrderStateSuccess;

  const factory SpecialOrderState.data(List<SpecialOrderItem> orders) =
      SpecialOrderStateOrders;
}
