import 'dart:convert';
import 'dart:io';

import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/features/special_order/data/special_orders_dto.dart';
import 'package:commercepal/features/special_order/domain/special_order_repo.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../app/data/network/api_provider.dart';

@Injectable(as: SpecialOrderRepo)
class SpecialOrderRepoImpl implements SpecialOrderRepo {
  final ApiProvider apiProvider;

  SpecialOrderRepoImpl(this.apiProvider);

  @override
  Future<String> specialOrder(File? file, Map orderData) async {
    try {
      final orderResponse =
          await apiProvider.post(orderData, EndPoints.specialOrder.url);
      final orderResponseObj = jsonDecode(orderResponse);
      if (orderResponseObj['statusCode'] == '000') {
        // upload image
        if (file != null) {
          final response = await apiProvider.uploadFile(
              EndPoints.specialOrderImage.url,
              file,
              {'orderId': orderResponseObj['specialOrderId']});
          return "Special order created successfully";
        } else {
          return orderResponseObj['statusMessage'];
        }
      } else {
        throw orderResponseObj['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<SpecialOrderItem>> getSpecialOrders() async {
    try {
      final orders = await apiProvider.get(EndPoints.mySpecialOrders.url);
      final orderObjs = specialOrdersDtoFromJson(orders);
      if (orderObjs.statusCode == "000") {
        if (orderObjs.data?.isEmpty == true) {
          throw 'No special orders found';
        }
        return orderObjs.data!;
      } else {
        throw orderObjs.statusDescription ??
            'Error fetching your special orders';
      }
    } catch (e) {
      rethrow;
    }
  }
}
