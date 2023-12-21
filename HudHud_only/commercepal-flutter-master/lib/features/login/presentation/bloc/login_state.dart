import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.init() = LoginStateInit;

  const factory LoginState.loading() = LoginStateLoading;

  const factory LoginState.error(String message) = LoginStateError;

  const factory LoginState.success(String message) = LoginStateSuccess;
  const factory LoginState.setPin(String phoneNumber) = LoginStateSetPin;
}
