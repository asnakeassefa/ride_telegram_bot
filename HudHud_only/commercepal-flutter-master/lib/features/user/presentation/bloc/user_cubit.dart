import 'package:bloc/bloc.dart';
import 'package:commercepal/features/user/presentation/bloc/user_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/core-utils/core_utils.dart';
import '../../domain/user_repo.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  final UserRepo userRepo;

  final CoreUtils coreUtils;

  UserCubit(this.userRepo, this.coreUtils) : super(const UserState.init());

  void getUser() async {
    final user = await userRepo.fetchUser();
    if (user == null) {
      emit(const UserState.userNotLoggedIn());
    } else {
      emit(UserState.user(user));
    }
  }

  void logOutUser() async {
    await userRepo.logOutUser();
    emit(const UserState.userNotLoggedIn());
  }

  void openPrivatePolicy() async {
    try {
      await coreUtils.openWebLink("https://commercepal.com/privacy-policy");
    } catch (e) {
      emit(UserState.error(e.toString()));
    }
  }
}
