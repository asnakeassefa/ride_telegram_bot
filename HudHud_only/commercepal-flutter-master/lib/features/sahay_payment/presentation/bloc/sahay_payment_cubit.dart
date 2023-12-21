import 'package:bloc/bloc.dart';
import 'package:commercepal/features/sahay_payment/domain/sahay_pay_repo.dart';
import 'package:commercepal/features/sahay_payment/presentation/bloc/sahay_payment_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/core-phonenumber/phone_number_utils.dart';

@injectable
class SahayPaymentCubit extends Cubit<SahayPaymentState> {
  final SahayPayRepo sahayPayRepo;
  final PhoneNumberUtils phoneNumberUtil;

  String? _name;
  String? _transRef;

  SahayPaymentCubit(this.sahayPayRepo, this.phoneNumberUtil)
      : super(const SahayPaymentState.init());

  void confirmUser(String phoneNumber) async {
    try {
      emit(const SahayPaymentState.loading());
      final response = await sahayPayRepo.accountLookUp(phoneNumber);
      _name = response;
      emit(SahayPaymentState.confirmation(response));
    } catch (e) {
      emit(SahayPaymentState.error(e.toString()));
    }
  }

  void checkOut(String phoneNumber) async {
    try {
      emit(const SahayPaymentState.loading());
      final response = await sahayPayRepo.paymentCheckOut(phoneNumber);
      _transRef = response;
      emit(const SahayPaymentState.otp());
    } catch (e) {
      emit(SahayPaymentState.error(e.toString()));
    }
  }

  void submitRequest(String? phoneNumber, String? otp) async {
    try {
      emit(const SahayPaymentState.loading());
      final isPhonenumberValida =
          await phoneNumberUtil.validateMobileApi(phoneNumber!, "ET");
      if (isPhonenumberValida == false) {
        throw 'Phone number format is invalid';
      }

      final parsePhoneNumber =
          await phoneNumberUtil.passPhoneToIso(phoneNumber, 'ET');
      if (_name == null) {
        confirmUser(parsePhoneNumber!);
      } else if (_transRef == null) {
        checkOut(parsePhoneNumber!);
      } else {
        completeOrder(otp);
      }
    } catch (e) {
      emit(SahayPaymentState.error(e.toString()));
    }
  }

  void completeOrder(String? otp) async {
    try {
      emit(const SahayPaymentState.loading());
      final response =
          await sahayPayRepo.confirmPaymentCheckOut(_transRef!, otp!);
      emit(SahayPaymentState.success(response));
    } catch (e) {
      emit(SahayPaymentState.error(e.toString()));
    }
  }
}
