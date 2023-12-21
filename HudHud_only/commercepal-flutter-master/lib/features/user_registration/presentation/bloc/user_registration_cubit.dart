import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:commercepal/features/user_registration/presentation/bloc/user_registration_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/core-phonenumber/phone_number_utils.dart';
import '../../domain/user_registration_repo.dart';

@injectable
class UserRegistrationCubit extends Cubit<UserRegistrationState> {
  final UserRegistrationRepo userRegistrationRepo;
  final PhoneNumberUtils phoneNumberUtils;

  UserRegistrationCubit(this.userRegistrationRepo, this.phoneNumberUtils)
      : super(const UserRegistrationState.init());

  void createAccount(String? fName, String? sName, String? email,
      String? phoneNumber, String? countryName, String? city) async {
    try {
      emit(const UserRegistrationState.loading());
      // validate country
      if (countryName == null) {
        throw 'Select country';
      }

      if (city == null) {
        throw 'Select city';
      }
      // validate email if available
      if (email != null) {
        final isEmailValid = await phoneNumberUtils.validateEmail(email);
        if (isEmailValid == false) {
          throw 'Invalid email format';
        }
      }

      // validate phone number
      final isValid =
          await phoneNumberUtils.validateMobileApi(phoneNumber!, "ET");
      if (!isValid) {
        throw 'Invalid phone number format';
      }

      // make request
      final isoPhone = await phoneNumberUtils.passPhoneToIso(phoneNumber, "ET");
      await userRegistrationRepo.registerUser(
          fName!, sName!, isoPhone!, countryName, city, email);

      // return success with parsed phone number
      emit(UserRegistrationState.success(isoPhone));
    } catch (e) {
      emit(UserRegistrationState.error(e.toString()));
    }
  }
}
