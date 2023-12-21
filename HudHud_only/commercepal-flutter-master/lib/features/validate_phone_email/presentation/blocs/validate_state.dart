import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_state.freezed.dart';

@freezed
class ValidateState with _$ValidateState {
  const factory ValidateState.init() = ValidateStateInit;
  const factory ValidateState.error(String error) = ValidateStateError;
  const factory ValidateState.success(String success) = ValidateStateSuccess;
  const factory ValidateState.otp() = ValidateStateOtp;
  const factory ValidateState.loading() = ValidateStateLoading;
}
