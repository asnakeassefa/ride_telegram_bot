import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/core/data/prefs_data_impl.dart';
import 'package:commercepal/core/models/auth_model.dart';
import 'package:commercepal/features/validate_phone_email/domain/validate_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/prefs_data.dart';

@Injectable(as: ValidateRepo)
class ValidateRepoImpl implements ValidateRepo {
  final ApiProvider apiProvider;
  final PrefsData prefsData;

  ValidateRepoImpl(this.apiProvider, this.prefsData);

  @override
  Future<String> validate(String user, String type) async {
    try {
      final payload = {"user": user, "type": type};
      final response =
          await apiProvider.post(payload, EndPoints.requestValidate.url);
      if (response['statusCode'] == '000') {
        return response['statusMessage'];
      } else {
        throw response['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> validateOtp(String user, String type, String otp) async {
    try {
      final payload = {"user": user, "type": type, "code": otp};
      final response =
          await apiProvider.post(payload, EndPoints.validateOtp.url);
      if (response['statusCode'] == '000') {
        // update status
        final authStatus = await AuthModel.getAuthStatus(prefsData);
        if (type == "PHONE") {
          authStatus?.isPhoneValidated = 1;
        }
        if (type == "EMAIL") {
          authStatus?.isEmailValidated = 1;
        }
        await prefsData.writeData(
            PrefsKeys.auth.name, authModelToJson(authStatus!));

        return response['statusMessage'];
      } else {
        throw response['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
