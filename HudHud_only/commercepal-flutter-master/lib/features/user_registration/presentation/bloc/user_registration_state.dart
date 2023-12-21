import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration_state.freezed.dart';

@freezed
class UserRegistrationState with _$UserRegistrationState {
  const factory UserRegistrationState.init() = UserRegistrationStateInit;

  const factory UserRegistrationState.loading() = UserRegistrationStateLoading;

  const factory UserRegistrationState.error(String msg) =
      UserRegistrationStateError;

  const factory UserRegistrationState.success(String msg) =
      UserRegistrationStateSuccess;

  const factory UserRegistrationState.setPassword(String msg) =
      UserRegistrationStatePassword;
}
