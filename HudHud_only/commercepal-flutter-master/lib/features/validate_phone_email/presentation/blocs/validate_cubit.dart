import 'package:bloc/bloc.dart';
import 'package:commercepal/features/validate_phone_email/presentation/blocs/validate_state.dart';
import 'package:injectable/injectable.dart';

import '../../domain/validate_repo.dart';

@injectable
class ValidateCubit extends Cubit<ValidateState> {
  final ValidateRepo validateRepo;

  ValidateCubit(this.validateRepo) : super(const ValidateState.init());

  void requestValidation(String? email, String? phone) async {
    try {
      emit(const ValidateState.loading());
      final response = await validateRepo.validate(
          email ?? phone ?? "", email == null ? "PHONE" : "EMAIL");
      emit(const ValidateState.otp());
    } catch (e) {
      emit(ValidateState.error(e.toString()));
    }
  }

  void confirmOtp(String? email, String? phone, String otp) async {
    try {
      emit(const ValidateState.loading());
      final response = await validateRepo.validateOtp(
          email ?? phone ?? "", email == null ? "PHONE" : "EMAIL", otp);
      emit(const ValidateState.success("OTP validation was a success"));
    } catch (e) {
      emit(ValidateState.error(e.toString()));
    }
  }
}
