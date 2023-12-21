import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_state.freezed.dart';

@freezed
class SessionState with _$SessionState {
  const factory SessionState.init() = SessionStateInit;
  const factory SessionState.loading() = SessionStateLoading;
  const factory SessionState.forceUpdate( String platform ) = SessionStateForceUpdate;
  const factory SessionState.loginUser() = SessionStateLogin;
  const factory SessionState.error(String error) = SessionStateError;
  const factory SessionState.isBusinessUser(bool isBusiness) = SessionBusinessUserState;
}
