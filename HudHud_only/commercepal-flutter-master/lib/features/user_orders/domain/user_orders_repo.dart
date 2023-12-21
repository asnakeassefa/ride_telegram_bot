import 'package:commercepal/features/user_orders/data/models/user_orders_dto.dart';

abstract class UserOrderRepo {
  Future<List<UserOrder>> fetchUserOrders();
}
