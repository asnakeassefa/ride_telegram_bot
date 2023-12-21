import 'package:bloc/bloc.dart';
import 'package:commercepal/features/login/presentation/bloc/login_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/core-phonenumber/phone_number_utils.dart';
import '../../domain/login_repository.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final LoginRepository loginRepository;
  final PhoneNumberUtils phoneNumberUtils;

  LoginCubit(this.loginRepository, this.phoneNumberUtils)
      : super(const LoginState.init());

  void loginUser(String emailOrPhone, String pass) async {
    try {
      emit(const LoginState.loading());

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

      final authResponse = await loginRepository.login(emailOrPhone, pass);
      if (authResponse.changePin == 0) {
        emit(LoginState.setPin(authResponse.phoneNumber!));
        return;
      }
      emit(const LoginState.success("Success"));
    } catch (e) {
      emit(LoginState.error(e.toString()));
    }
  }
}
