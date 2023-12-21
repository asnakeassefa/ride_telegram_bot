import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/customer_loan/data/dto/financial_mark_ups_dto.dart';
import '../../../../core/customer_loan/data/model/financial_institution_dto.dart';
import '../../data/dto/payment_modes_dto.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.init() = PaymentStateInit;

  const factory PaymentState.loading() = PaymentStateLoading;

  const factory PaymentState.error(String message) = PaymentStateError;

  const factory PaymentState.paymentMethods(
      List<PaymentMethods> paymentMethods) = PaymentStateSuccess;

  const factory PaymentState.financialInsts(
      List<FinancialInstitution> institutions) = PaymentStateFinancialInst;

  const factory PaymentState.institutionMarkUps(List<MarkUpItem> markUpItems) =
      PaymentStateMarkUpItems;
}
