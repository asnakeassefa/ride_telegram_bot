import 'package:bloc/bloc.dart';
import 'package:commercepal/core/session/domain/session_repo.dart';
import 'package:commercepal/features/dashboard/bloc/dashboard_state.dart';
import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final SessionRepo sessionRepo;

  DashboardCubit(this.sessionRepo) : super(DashboardState.init());

  /// This function checks if the user is a business and updates the dashboard state
  /// accordingly.
  void checkIfUserIsABusiness() async {
    try {
      final response = await sessionRepo.isUserABusiness();
      emit(DashboardState.isUserABusiness(response));
    } catch (e) {
      Fimber.e("Unable to determine user: $e");
      emit(const DashboardState.isUserABusiness(false));
    }
  }

  void toggleBusinessUserAcc() async {
    try {
      await sessionRepo.toggleUserAccountUserBusiness();
      emit(const DashboardState.success("Switched accounts"));
    } catch (e) {
      Fimber.e("Unable to switch $e");
    }
  }

  /// This function checks if the user has switched to a business account and
  /// updates the dashboard state accordingly.
  void hasUserSwitchedAccounts() async {
    try {
      final response = await sessionRepo.hasUserSwitchedToBusiness();
      emit(DashboardState.userSwitchedToBusiness(response));
    } catch (e) {
      Fimber.e("Error getting user switched state $e");
      emit(const DashboardState.userSwitchedToBusiness(false));
    }
  }
}
