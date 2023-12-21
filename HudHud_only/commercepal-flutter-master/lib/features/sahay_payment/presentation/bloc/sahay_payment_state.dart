
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sahay_payment_state.freezed.dart';

@freezed
class SahayPaymentState with _$SahayPaymentState {
  const factory SahayPaymentState.init() = SahayPaymentStateInit;

  const factory SahayPaymentState.loading() = SahayPaymentStateLoading;

  const factory SahayPaymentState.error(String message) = SahayPaymentStateError;
  const factory SahayPaymentState.confirmation(String name) = SahayPaymentStateConfirmation;
  const factory SahayPaymentState.otp() = SahayPaymentStateOtp;
  const factory SahayPaymentState.success(String message) = SahayPaymentStateSuccess;

}
