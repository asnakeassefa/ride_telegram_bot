import 'dart:convert';

import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/core/addresses-core/data/dto/addresses_dto.dart';
import 'package:injectable/injectable.dart';

import '../../data/prefs_data.dart';
import '../../data/prefs_data_impl.dart';
import '../../models/user_model.dart';
import '../domain/address_repo.dart';

@Injectable(as: AddressRepo)
class AddressRepoImpl implements AddressRepo {
  final ApiProvider apiProvider;
  final PrefsData prefsData;

  AddressRepoImpl(this.apiProvider, this.prefsData);

  @override
  Future<List<AddressItem>> getAddresses() async {
    try {
      final response = await apiProvider.get(EndPoints.addresses.url);
      final addressResponse = jsonDecode(response);
      if (addressResponse['statusCode'] == '000') {
        final addObjs = AddressesDto.fromJson(addressResponse);
        if (addObjs.data?.isEmpty == true) {
          throw "No addresses found. Click 'Add' button to add one";
        }
        return addObjs.data!;
      } else {
        throw addressResponse['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> deleteAddress(num addressId) async {
    try {
      final payLoad = {"id": addressId};
      final response =
          await apiProvider.post(payLoad, EndPoints.deleteAddress.url);
      final decodedResponse = jsonDecode(response);
      if (decodedResponse['statusCode'] == '000') {
        return "Address deleted successfully";
      } else {
        throw decodedResponse['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> addAddress(String subCity, String physicalName, num cityId,
      num countryId, String country) async {
    try {
      final uString = await prefsData.readData(PrefsKeys.user.name);
      final user = UserModel.fromJson(jsonDecode(uString!));

      final payLoad = {
        "regionId": countryId,
        "country": country,
        "city": cityId,
        "subCity": subCity,
        "phoneNumber": user.details?.phoneNumber ?? '',
        "physicalAddress": physicalName,
        "latitude": "-1",
        "longitude": "-1"
      };

      final response =
          await apiProvider.post(payLoad, EndPoints.addAddress.url);
      final decodeResponse = jsonDecode(response);
      if (decodeResponse['statusCode'] == "000") {
        return decodeResponse['statusDescription'];
      } else {
        throw decodeResponse['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> updateAddress(num addressId, String subCity,
      String physicalName, num cityId, num countryId, String country) async {
    try {
      final uString = await prefsData.readData(PrefsKeys.user.name);
      final user = UserModel.fromJson(jsonDecode(uString!));

      final payLoad = {
        "id": addressId,
        "regionId": countryId,
        "country": country,
        "city": cityId,
        "subCity": subCity,
        "phoneNumber": user.details?.phoneNumber ?? '',
        "physicalAddress": physicalName,
        "latitude": "-1",
        "longitude": "-1"
      };

      final response =
          await apiProvider.post(payLoad, EndPoints.updateDeliveryAddress.url);
      final decodeResponse = jsonDecode(response);
      if (decodeResponse['statusCode'] == "000") {
        return decodeResponse['statusDescription'];
      } else {
        throw decodeResponse['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
