import 'package:bloc/bloc.dart';
import 'package:commercepal/features/payment/data/dto/payment_modes_dto.dart';
import 'package:commercepal/features/payment/presentation/bloc/payment_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/customer_loan/domain/customer_loan_repo.dart';
import '../../domain/payment_repo.dart';

@injectable
class PaymentCubit extends Cubit<PaymentState> {
  final PaymentRepo paymentRepo;
  final CustomerLoanRepo customerLoanRepo;

  PaymentCubit(this.paymentRepo, this.customerLoanRepo)
      : super(const PaymentState.init());

  void fetchPaymentModes() async {
    try {
      emit(const PaymentState.loading());
      final data = await paymentRepo.fetchPaymentModes();
      await _attachFinancialInsts(data);
      emit(PaymentState.paymentMethods(data));
    } catch (e) {
      emit(PaymentState.error(e.toString()));
    }
  }

  Future _attachFinancialInsts(List<PaymentMethods> data) async {
    // check if loan is added,if not add it
    final loanPaymentMode =
        data.where((element) => element.name?.toLowerCase() == "loan");
    // get loans
    final loans = await customerLoanRepo.fetchFinancialInstitutions();
    // add as payment method
    if (loanPaymentMode.isNotEmpty) {
      // remove existing and add new one
      data.removeWhere((element) => element.name?.toLowerCase() == "loan");
    }

    data.add(PaymentMethods(
        name: "Loan",
        iconUrl: "loan.png",
        paymentMethod: "LOAN",
        items: loans
            .map((e) => PaymentMethodItem(
                iconUrl: "loan.png",
                name: e.name,
                paymentMode: PaymentMode.loan,
                paymentMethod: e.code,
                id: e.id))
            .toList()));
  }

  void fetchMarkUps(num institutionId) async {
    try {
      emit(const PaymentState.loading());
      final response =
          await customerLoanRepo.fetchFinancialMarkUps(institutionId);
      emit(PaymentState.institutionMarkUps(response));
    } catch (e) {
      emit(PaymentState.error(e.toString()));
    }
  }
}
