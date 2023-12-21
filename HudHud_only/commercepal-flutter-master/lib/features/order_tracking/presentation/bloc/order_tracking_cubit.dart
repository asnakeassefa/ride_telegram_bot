import 'package:bloc/bloc.dart';
import 'package:commercepal/features/order_tracking/presentation/bloc/order_tracking_state.dart';
import 'package:injectable/injectable.dart';

import '../../domain/order_tracking_repo.dart';

@injectable
class OrderTrackingCubit extends Cubit<OrderTrackingState> {
  final OrderTrackingRepo orderTrackingRepo;

  OrderTrackingCubit(this.orderTrackingRepo)
      : super(const OrderTrackingState.init());

  void fetchTrackingData(num orderId) async {
    try {
      emit(const OrderTrackingState.loading());
      final response = await orderTrackingRepo.orderTrackingStatus(orderId);
      emit(OrderTrackingState.trackingData(response));
    } catch (e) {
      emit(OrderTrackingState.error(e.toString()));
    }
  }
}
