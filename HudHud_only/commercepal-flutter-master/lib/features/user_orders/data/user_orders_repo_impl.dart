import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/features/user_orders/data/models/user_orders_dto.dart';
import 'package:injectable/injectable.dart';

import '../domain/user_orders_repo.dart';

@Injectable(as: UserOrderRepo)
class UserOrderRepoImpl implements UserOrderRepo {
  final ApiProvider apiProvider;

  UserOrderRepoImpl(this.apiProvider);

  @override
  Future<List<UserOrder>> fetchUserOrders() async {
    try {
      final response = await apiProvider.get(EndPoints.userOrders.url);
      if (response['statusCode'] == "000") {
        final orderObj = UserOrdersDto.fromJson(response);
        if (orderObj.data?.isEmpty == true) {
          throw "No orders found";
        }
        return orderObj.data!;
      } else {
        throw response['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
