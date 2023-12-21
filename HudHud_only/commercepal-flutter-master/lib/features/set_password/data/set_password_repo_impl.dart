import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../app/data/network/api_provider.dart';
import '../../../app/data/network/end_points.dart';
import '../../../core/data/prefs_data.dart';
import '../../../core/data/prefs_data_impl.dart';
import '../../../core/device-info/device_info.dart';
import '../../../core/dto/Login_dto.dart';
import '../domain/set_password_repo.dart';

@Injectable(as: SetPasswordRepo)
class SetPasswordRepoImpl implements SetPasswordRepo {
  final ApiProvider apiProvider;
  final DeviceInfo deviceInfo;
  final PrefsData prefsData;

  SetPasswordRepoImpl(this.apiProvider, this.deviceInfo, this.prefsData);

  @override
  Future<String> resetPassword(String password) async {
    try {
      // set new password
      final payLoad = {"password": password};
      final response =
      await apiProvider.post(payLoad, EndPoints.resetPassword.url);
      if (response['statusCode'] == '000') {
        return response['statusMessage'];
      } else {
        throw response['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> confirmPassResetCode(String emailOrPhone, String code) async {
    try {
      final payload = {"user": emailOrPhone, "code": code};
      final response =
      await apiProvider.post(payload, EndPoints.confirmCode.url);
      final objResponse = jsonDecode(response);
      if (objResponse['statusCode'] == '000') {
        final userToken = objResponse['jwttoken'];
        // save new token - needed when setting new password
        await prefsData.writeData(PrefsKeys.auth.name, userToken);

        return objResponse['statusMessage'];
      } else {
        throw objResponse['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> temporaryLogin(String emailOrPhone, String code) async {
    try {
      final request = {"email": emailOrPhone, "password": code};
      final response = await apiProvider.post(request, EndPoints.login.url);
      final decodedResponse = jsonDecode(response);
      if (decodedResponse['statusCode'] == '000') {
        final responseObject = LoginDto.fromJson(decodedResponse);

        // store tokens
        await prefsData.writeData(
            PrefsKeys.userToken.name, responseObject.userToken!);

        return true;
      } else {
        throw decodedResponse['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
