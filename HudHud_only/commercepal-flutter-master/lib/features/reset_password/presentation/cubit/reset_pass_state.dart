import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_pass_state.freezed.dart';

@freezed
class ResetPassState with _$ResetPassState {
  const factory ResetPassState.init() = ResetPassStateInit;

  const factory ResetPassState.loading() = ResetPassStateLoading;

  const factory ResetPassState.code() = ResetPassStateCode;
  const factory ResetPassState.setPassword() = ResetPassStatePassword;

  const factory ResetPassState.error(String error) = ResetPassStateError;

  const factory ResetPassState.success(String msg) = ResetPassStateSuccess;
}
