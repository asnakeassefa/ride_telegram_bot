

import 'package:commercepal/core/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.init() = UserStateInit;
  const factory UserState.userNotLoggedIn() = UserStateNotLoggedIn;
  const factory UserState.user(UserModel userModel) = UserStateData;
  const factory UserState.error(String error) = UserStateError;
}
