import '../data/order_status_dto.dart';

abstract class OrderTrackingRepo {
    Future<OrderTrackingData> orderTrackingStatus(num orderId);
}
