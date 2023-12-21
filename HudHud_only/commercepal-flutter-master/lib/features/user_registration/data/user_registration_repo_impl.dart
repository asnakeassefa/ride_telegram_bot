import 'dart:convert';

import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/core/data/prefs_data_impl.dart';
import 'package:commercepal/core/device-info/device_info.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/prefs_data.dart';
import '../../../core/models/user_model.dart';
import '../../../core/dto/Login_dto.dart';
import '../domain/user_registration_repo.dart';

@Injectable(as: UserRegistrationRepo)
class UserRegistrationRepoImpl implements UserRegistrationRepo {
  final ApiProvider apiProvider;
  final DeviceInfo deviceInfo;
  final PrefsData prefsData;

  UserRegistrationRepoImpl(this.apiProvider, this.deviceInfo, this.prefsData);

  @override
  Future<bool> userExists(String emailOrPhone) async {
    try {
      final payLoad = {"user": emailOrPhone};

      final response =
          await apiProvider.post(payLoad, EndPoints.userExists.url);
      final objResponse = jsonDecode(response);
      // return true if user does not exist
      return objResponse['statusCode'] != '000';
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> registerUser(String fName, String sName, String phoneNumber,
      String country, String city, String? email) async {
    try {
      // check if user exists
      final userResponse = await userExists(phoneNumber);
      if (!userResponse) {
        throw "User exists";
      }

      final deviceData = await deviceInfo.getDeviceInfo();
      final payload = {
        "msisdn": phoneNumber,
        "firstName": fName,
        "lastName": sName,
        "email": email ?? '$phoneNumber@gmail.com',
        "city": city,
        "country": country,
        "language": "en",
        "registeredBy": "self",
        "channel": deviceData.name,
        "deviceId": deviceData.deviceId
      };

      final response =
          await apiProvider.post(payload, EndPoints.registration.url);
      final objResponse = jsonDecode(response);
      if (objResponse['statusCode'] == '000') {
        return objResponse['statusDescription'];
      } else {
        throw objResponse['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }

}
