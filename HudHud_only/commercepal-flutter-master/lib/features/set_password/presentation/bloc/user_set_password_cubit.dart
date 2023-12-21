import 'package:bloc/bloc.dart';
import 'package:commercepal/features/set_password/presentation/bloc/user_set_password_state.dart';
import 'package:injectable/injectable.dart';

import '../../domain/set_password_repo.dart';

@injectable
class UserSetPasswordCubit extends Cubit<UserSetPasswordState> {
  final SetPasswordRepo setPasswordRepo;

  UserSetPasswordCubit(this.setPasswordRepo)
      : super(const UserSetPasswordState.init());

  void validateCode(String? phone, String? code) async {
    try {
      emit(const UserSetPasswordState.loading());
      final response =
      await setPasswordRepo.temporaryLogin(phone!, code!);
      emit(const UserSetPasswordState.setPassword("Enter your new password"));
    } catch (e) {
      emit(UserSetPasswordState.error(e.toString()));
    }
  }

  void setPassword(String? password) async {
    try {
      emit(const UserSetPasswordState.loading());
      final response = await setPasswordRepo.resetPassword(password!);
      emit(UserSetPasswordState.success(response));
    } catch (e) {
      emit(UserSetPasswordState.error(e.toString()));
    }
  }
}
