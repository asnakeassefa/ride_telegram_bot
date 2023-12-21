import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/core/data/prefs_data.dart';
import 'package:commercepal/core/data/prefs_data_impl.dart';
import 'package:commercepal/features/reset_password/domain/reset_pass_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ResetPassRepo)
class ResetPassRepoImpl implements ResetPassRepo {
  final ApiProvider apiProvider;
  final PrefsData prefsData;

  ResetPassRepoImpl(this.apiProvider, this.prefsData);

  @override
  Future<String> requestPassReset(String emailOrPhone) async {
    try {
      final payload = {"user": emailOrPhone};
      final response =
          await apiProvider.post(payload, EndPoints.requestPassReset.url);
      if (response['statusCode'] == "000") {
        return response['statusMessage'];
      } else {
        throw response['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> confirmPassReset(String emailOrPhone, String code) async {
    try {
      final payload = {"user": emailOrPhone, "code": code};
      final response =
          await apiProvider.post(payload, EndPoints.confirmPassReset.url);
      if (response['statusCode'] == '000') {
        // save token to be used in setting new password
        await prefsData.writeData(
            PrefsKeys.userToken.name, response['jwttoken']);
        return response['statusMessage'];
      } else {
        throw response['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> setNewPassword(String newPass) async {
    try {
      // set new password
      final payLoad = {"password": newPass};
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
}
