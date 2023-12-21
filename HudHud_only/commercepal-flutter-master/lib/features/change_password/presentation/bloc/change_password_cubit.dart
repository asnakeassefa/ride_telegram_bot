import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/change_password_repo.dart';
import 'change_password_state.dart';

@injectable
class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  final ChangePasswordRepo changePasswordRepo;

  ChangePasswordCubit(this.changePasswordRepo)
      : super(const ChangePasswordState.init());

  void changePassword(String oldPassword, String newPassword) async {
    try {
      emit(const ChangePasswordState.loading());
      if (oldPassword == newPassword) {
        throw 'New password can not be the same as old password';
      }
      final response =
          await changePasswordRepo.changePassword(oldPassword, newPassword);
      emit(ChangePasswordState.success(response));
    } catch (e) {
      emit(ChangePasswordState.error(e.toString()));
    }
  }
}
