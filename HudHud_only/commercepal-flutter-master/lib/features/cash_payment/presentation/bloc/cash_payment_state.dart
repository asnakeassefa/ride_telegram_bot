import 'package:freezed_annotation/freezed_annotation.dart';

part 'cash_payment_state.freezed.dart';

@freezed
class CashPaymentState with _$CashPaymentState {
  const factory CashPaymentState.init() = CashPaymentStateInit;

  const factory CashPaymentState.loading() = CashPaymentStateLoading;

  const factory CashPaymentState.error(String message) = CashPaymentStateError;

  const factory CashPaymentState.validateCode(String code) =
      CashPaymentStateValidateCode;

  const factory CashPaymentState.success(String message) =
      CashPaymentStateSuccess;
}
