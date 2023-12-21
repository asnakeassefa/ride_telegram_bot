import 'dart:io';

import '../data/special_orders_dto.dart';

abstract class SpecialOrderRepo {
  Future<String> specialOrder(File? file, Map orderData);
  Future<List<SpecialOrderItem>> getSpecialOrders();
}
