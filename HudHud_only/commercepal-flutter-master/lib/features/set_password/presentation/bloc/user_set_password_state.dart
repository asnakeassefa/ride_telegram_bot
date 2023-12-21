import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_set_password_state.freezed.dart';


@freezed
class UserSetPasswordState with _$UserSetPasswordState {
  const factory UserSetPasswordState.init() = UserSetPasswordStateInit;

  const factory UserSetPasswordState.loading() = UserSetPasswordStateLoading;

  const factory UserSetPasswordState.error(String msg) =
  UserSetPasswordStateError;

  const factory UserSetPasswordState.success(String msg) =
  UserSetPasswordStateSuccess;

  const factory UserSetPasswordState.setPassword(String msg) =
  UserSetPasswordStatePassword;
}
