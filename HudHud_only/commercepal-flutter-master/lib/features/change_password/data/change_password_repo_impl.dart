import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/features/change_password/domain/change_password_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/prefs_data.dart';

@Injectable(as: ChangePasswordRepo)
class ChangePasswordRepoImpl implements ChangePasswordRepo {
  final ApiProvider apiProvider;
  final PrefsData prefsData;

  ChangePasswordRepoImpl(this.apiProvider, this.prefsData);

  @override
  Future<String> changePassword(String oldPassword, String newPassword) async {
    try {
      final payload = {"oldPassword": oldPassword, "newPassword": newPassword};
      final response =
          await apiProvider.post(payload, EndPoints.changePassword.url);
      if (response['statusCode'] == '000') {
        //  force user to login
        await prefsData.nuke();

        return response['statusMessage'];
      } else {
        throw response['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
