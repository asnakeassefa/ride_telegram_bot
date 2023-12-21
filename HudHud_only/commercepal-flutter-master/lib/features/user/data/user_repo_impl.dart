import 'dart:convert';

import 'package:commercepal/core/data/prefs_data.dart';
import 'package:commercepal/core/data/prefs_data_impl.dart';
import 'package:commercepal/core/models/auth_model.dart';
import 'package:commercepal/core/models/user_model.dart';
import 'package:commercepal/features/user/domain/user_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../core/cart-core/dao/cart_dao.dart';

@Injectable(as: UserRepo)
class UserRepoImpl implements UserRepo {
  final PrefsData prefsData;
  final CartDao cartDao;

  UserRepoImpl(this.prefsData, this.cartDao);

  @override
  Future<UserModel?> fetchUser() async {
    try {
      if (await prefsData.contains(PrefsKeys.user.name) == true) {
        final uString = await prefsData.readData(PrefsKeys.user.name);
        final authStatus = await AuthModel.getAuthStatus(prefsData);

        final userModel = UserModel.fromJson(jsonDecode(uString!));
        userModel.authStatus = authStatus;

        return userModel;
      } else {
        throw 'User not found';
      }
    } catch (e) {
      return null;
    }
  }

  @override
  Future<String> logOutUser() async {
    await prefsData.nuke();
    return "User logged out successfully";
  }
}
