import 'dart:convert';

import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/features/check_out/data/dto/addresses_dto.dart';
import 'package:commercepal/features/check_out/data/models/address.dart';
import 'package:commercepal/features/check_out/domain/check_out_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/cart-core/dao/cart_dao.dart';
import '../../../../core/data/prefs_data.dart';
import '../../../../core/data/prefs_data_impl.dart';
import '../../../../core/session/domain/session_repo.dart';

@Injectable(as: CheckOutRepo)
class CheckOutRepoImpl implements CheckOutRepo {
  final ApiProvider apiProvider;
  final CartDao cartDao;
  final PrefsData pData;
  final SessionRepo sessionRepo;

  CheckOutRepoImpl(
      this.apiProvider, this.cartDao, this.pData, this.sessionRepo);

  @override
  Future<List<Address>> fetchAddresses() async {
    try {
      final response = await apiProvider.get(EndPoints.addresses.url);
      final addressesResponse = jsonDecode(response);
      if (addressesResponse['statusCode'] == '000') {
        final aObject = AddressesDto.fromJson(addressesResponse);
        if (aObject.data?.isEmpty == true) {
          throw "No addresses found. Click 'Add address' to add one";
        }
        return aObject.data!.map((e) => e.toAddress()).toList();
      } else {
        throw addressesResponse['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> generateOrderRef() async {
    try {
      final isUserBusiness = await sessionRepo.hasUserSwitchedToBusiness();
      final cartItems = await cartDao.getAllItems();
      final request = {
        "paymentMethod": "Murabaha",
        "items": cartItems
            .map((e) => {
                  "productId": e.productId,
                  "subProductId": e.subProductId,
                  "quantity": e.quantity
                })
            .toList()
      };

      final response = await apiProvider.post(
          request,
          isUserBusiness
              ? EndPoints.businessCheckOut.url
              : EndPoints.checkOut.url);
      final cResponse = jsonDecode(response);
      if (cResponse['statusCode'] == '000') {
        final orderRef = cResponse['OrderRef'];
        // save it
        pData.writeData("order_ref", orderRef);

        return orderRef;
      } else {
        throw cResponse['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<num> getDeliveryFee(String orderRef, int? addressId) async {
    try {
      final isUserBusiness = await sessionRepo.hasUserSwitchedToBusiness();
      final payLoad = switch (isUserBusiness) {
        false => {
            "orderRef": orderRef,
            "PreferredLocationType": "C",
            "AddressId": addressId
          },
        true => {"orderRef": orderRef}
      };

      final response = await apiProvider.post(
          payLoad,
          isUserBusiness
              ? EndPoints.businessDeliveryFee.url
              : EndPoints.deliveryFee.url);
      final dResponse = jsonDecode(response);
      if (dResponse['statusCode'] == '000') {
        if (dResponse['totalDeliveryFee'] == null) {
          throw 'Unable to calculate delivery fee. Try again later';
        }
        // save delivery fee
        await pData.writeData(PrefsKeys.deliveryFee.name,
            dResponse['totalDeliveryFee'].toString());
        return dResponse['totalDeliveryFee'];
      } else {
        throw dResponse['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
