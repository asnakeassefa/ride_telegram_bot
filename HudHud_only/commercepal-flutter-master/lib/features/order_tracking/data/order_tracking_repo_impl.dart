import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/features/order_tracking/domain/order_tracking_repo.dart';
import 'package:commercepal/features/order_tracking/presentation/order_tracking_page.dart';
import 'package:injectable/injectable.dart';

import 'order_status_dto.dart';

@Injectable(as: OrderTrackingRepo)
class OrderTrackingRepoImpl implements OrderTrackingRepo {
  final ApiProvider apiProvider;

  OrderTrackingRepoImpl(this.apiProvider);

  @override
  Future<OrderTrackingData> orderTrackingStatus(num orderId) async {
    try {
      final payload = {"OrderId": orderId};
      final response =
          await apiProvider.post(payload, EndPoints.orderTracking.url);
      if (response['statusCode'] == '000') {
        final orderDetails = OrderStatusDto.fromJson(response);
        return orderDetails.data!;
      } else {
        throw response['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
