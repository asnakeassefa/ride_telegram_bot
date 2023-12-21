import 'package:bloc/bloc.dart';
import 'package:commercepal/features/reset_password/presentation/cubit/reset_pass_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/core-phonenumber/phone_number_utils.dart';
import '../../domain/reset_pass_repo.dart';

@injectable
class ResetPassCubit extends Cubit<ResetPassState> {
  final ResetPassRepo resetPassRepo;
  final PhoneNumberUtils phoneNumberUtils;

  ResetPassCubit(this.resetPassRepo, this.phoneNumberUtils)
      : super(const ResetPassState.init());

  void requestPassReset(String emailOrPhone) async {
    try {
      emit(const ResetPassState.loading());

      // validate email/phone
      final isEmailValid = await phoneNumberUtils.validateEmail(emailOrPhone);
      final isPhoneNumberValid =
          await phoneNumberUtils.validateMobileApi(emailOrPhone, 'ET');
      if (isEmailValid == false && isPhoneNumberValid == false) {
        throw 'Please enter a valid email or phone number.';
      }

      // if its a phone number, use the formatted one
      if (isPhoneNumberValid == true) {
        emailOrPhone =
            (await phoneNumberUtils.passPhoneToIso(emailOrPhone, "ET"))!;
      }

      final response = await resetPassRepo.requestPassReset(emailOrPhone);
      emit(const ResetPassState.code());
    } catch (e) {
      emit(ResetPassState.error(e.toString()));
    }
  }

  void confirmCode(String emailOrPhone, String code) async {
    try {
      emit(const ResetPassState.loading());

      //TODO: No need of repeating this, since its already done in [requestPassReset]. So remove it :)
      // validate email/phone
      final isEmailValid = await phoneNumberUtils.validateEmail(emailOrPhone);
      final isPhoneNumberValid =
          await phoneNumberUtils.validateMobileApi(emailOrPhone, 'ET');
      if (isEmailValid == false && isPhoneNumberValid == false) {
        throw 'Please enter a valid email or phone number.';
      }

      // if its a phone number, use the formatted one
      if (isPhoneNumberValid == true) {
        emailOrPhone =
            (await phoneNumberUtils.passPhoneToIso(emailOrPhone, "ET"))!;
      }

      await resetPassRepo.confirmPassReset(emailOrPhone, code);
      emit(const ResetPassState.setPassword());
    } catch (e) {
      emit(ResetPassState.error(e.toString()));
    }
  }

  void setNewPass(String password) async {
    try {
      emit(const ResetPassState.loading());
      final response = await resetPassRepo.setNewPassword(password);
      emit(ResetPassState.success(response));
    } catch (e) {
      emit(ResetPassState.error(e.toString()));
    }
  }
}
