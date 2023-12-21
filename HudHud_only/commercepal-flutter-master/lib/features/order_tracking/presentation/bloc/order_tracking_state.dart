import 'package:commercepal/features/order_tracking/data/order_status_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_tracking_state.freezed.dart';

@freezed
class OrderTrackingState with _$OrderTrackingState {
  const factory OrderTrackingState.init() = OrderTrackingStateInit;

  const factory OrderTrackingState.loading() = OrderTrackingStateLoading;

  const factory OrderTrackingState.trackingData(
      OrderTrackingData orderTrackingData) = OrderTrackingStateData;

  const factory OrderTrackingState.error(String message) =
      OrderTrackingStateError;
}
