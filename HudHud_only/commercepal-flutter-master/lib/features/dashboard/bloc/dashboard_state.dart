
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.init() = DashboardInitState;
  const factory DashboardState.loading() = DashboardLoadingState;
  const factory DashboardState.isUserABusiness(bool isBusiness) = DashboardBusinessState;
  const factory DashboardState.success(String message) = DashboardSuccessState;
  const factory DashboardState.userSwitchedToBusiness(bool switched) = DashboardUserSwicthedState;
}
