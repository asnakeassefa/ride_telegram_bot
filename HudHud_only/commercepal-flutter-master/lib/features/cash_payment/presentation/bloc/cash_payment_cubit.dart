
import 'package:bloc/bloc.dart';
import 'package:commercepal/features/cash_payment/presentation/bloc/cash_payment_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/core-phonenumber/phone_number_utils.dart';
import '../../domain/cash_payment_repo.dart';

@injectable
class CashPaymentCubit extends Cubit<CashPaymentState> {
  final CashPaymentRepo cashPaymentRepo;
  final PhoneNumberUtils phoneNumberUtils;

  String? _transactionRef;

  CashPaymentCubit(this.cashPaymentRepo, this.phoneNumberUtils)
      : super(const CashPaymentState.init());

  void submitCashPayment(String phoneNumber, String cashType) async {
    try {
      emit(const CashPaymentState.loading());
      // validate phone number
      if (await phoneNumberUtils.validateMobileApi(phoneNumber, "ET") ==
          false) {
        throw 'Invalid phone number format';
      }

      final parsedPhoneNumber =
          await phoneNumberUtils.passPhoneToIso(phoneNumber, 'ET');
      final response =
          await cashPaymentRepo.cashCheckOut(parsedPhoneNumber!, cashType);
      if (cashType == 'HELLO_CASH') {
        // response from hello cash request is the transaction ref
        // TODO: can do be cleaner code
        _transactionRef = response;
        emit(CashPaymentState.validateCode(response));
      } else {
        emit(CashPaymentState.success(response));
      }
    } catch (e) {
      emit(CashPaymentState.error(e.toString()));
    }
  }

  void validateHelloCashPayment() async {
    try {
      emit(const CashPaymentState.loading());
      if (_transactionRef == null) throw 'Unable to validate transaction ref';
      final response =
          await cashPaymentRepo.validateHelloCashPayment(_transactionRef!);
      emit(CashPaymentState.success(response));
    } catch (e) {
      emit(CashPaymentState.error(e.toString()));
    }
  }
}
