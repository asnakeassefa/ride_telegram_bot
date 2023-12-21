import 'dart:convert';
import 'dart:developer';

import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/core/data/prefs_data.dart';
import 'package:commercepal/core/data/prefs_data_impl.dart';
import 'package:commercepal/core/models/user_model.dart';
import 'package:commercepal/core/session/domain/session_repo.dart';
import 'package:injectable/injectable.dart';

import 'session_management_dto.dart';

@Injectable(as: SessionRepo)
class SessionRepoImpl implements SessionRepo {
  final PrefsData prefsData;
  final ApiProvider apiProvider;

  SessionRepoImpl(this.apiProvider, this.prefsData);

  @override
  Future<SessionManagementData?> initSession() async {
    try {
      final response = await apiProvider.get(EndPoints.appVersion.url);
      if (response['statusCode'] == '000') {
        return SessionManagementDto.fromJson(response).data;
      } else {
        throw response['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> shouldShowForceUpdate() {
    // TODO: implement shouldShowForceUpdate
    throw UnimplementedError();
  }

  @override
  Future<String> saveAndroidHash(String hash) async {
    try {
      final payload = {"hash": hash};
      await apiProvider.post(payload, EndPoints.saveHash.url);
      return 'Hash saved';
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> isUserABusiness() async {
    try {
      final userString = await prefsData.readData(PrefsKeys.user.name);
      final user = UserModel.fromJson(jsonDecode(userString!));
      return user.isBusiness == "YES";
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> hasUserSwitchedToBusiness() async {
    try {
      final currentSelection =
          await prefsData.readData(PrefsKeys.userBusinessAcc.name);
      return currentSelection == "YES";
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> toggleUserAccountUserBusiness() async {
    try {
      final currentSelection =
          await prefsData.readData(PrefsKeys.userBusinessAcc.name);
      final newSelection = currentSelection == "YES" ? "NO" : "YES";
      await prefsData.writeData(PrefsKeys.userBusinessAcc.name, newSelection);
    } catch (e) {
      rethrow;
    }
  }
}
