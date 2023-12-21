import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:commercepal/app/app.dart';
import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/app_colors.dart';
import 'package:commercepal/core/customer_loan/data/dto/financial_mark_ups_dto.dart';
import 'package:commercepal/features/cash_payment/presentation/cash_payment_page.dart';
import 'package:commercepal/features/dashboard/widgets/home_error_widget.dart';
import 'package:commercepal/features/dashboard/widgets/home_loading_widget.dart';
import 'package:commercepal/features/payment/data/dto/payment_modes_dto.dart';
import 'package:commercepal/features/payment/presentation/bloc/payment_cubit.dart';
import 'package:commercepal/features/payment/presentation/bloc/payment_state.dart';
import 'package:commercepal/features/sahay_payment/presentation/sahay_pay_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/utils/assets.dart';
import '../../customer_loan/presentation/customer_loan_page.dart';
import 'loan_payment_period_bs.dart';

class PaymentPage extends StatelessWidget {
  static const routeName = "/payment_page";

  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Payment modes',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: false,
      ),
      body: BlocProvider(
        create: (context) => getIt<PaymentCubit>()..fetchPaymentModes(),
        child: BlocConsumer<PaymentCubit, PaymentState>(
          listener: (context, state) {},
          builder: (ctx, state) {
            return state.maybeWhen(
                orElse: () => const HomeLoadingWidget(),
                error: (error) => HomeErrorWidget(error: error),
                paymentMethods: (paymentModes) => Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView(
                        children: paymentModes
                            .map((e) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.name ?? '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: e.items!
                                            .map((e) => InkWell(
                                                  onTap: () {
                                                    _redirectUserBasedOnPaymentMethod(
                                                        e, context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 20.0),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(12),
                                                          height: 80,
                                                          width: 80,
                                                          decoration:
                                                              const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color:
                                                                      AppColors
                                                                          .bg1),
                                                          child: e.iconUrl ==
                                                                  "loan.png"
                                                              ? Image.asset(
                                                                  Assets.bank)
                                                              : CachedNetworkImage(
                                                                  imageUrl:
                                                                      e.iconUrl ??
                                                                          '',
                                                                ),
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Text(e.name ?? '')
                                                      ],
                                                    ),
                                                  ),
                                                ))
                                            .toList(),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Divider(),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ))
                            .toList(),
                      ),
                    ));
          },
        ),
      ),
    );
  }

  void _redirectUserBasedOnPaymentMethod(
      PaymentMethodItem e, BuildContext context) {
    if (e.name!.toLowerCase().contains("sahay") == true) {
      Navigator.pushNamed(context, SahayPayPage.routeName, arguments: {
        "cash_type": e.name,
        "payment_instruction": e.paymentInstruction
      });
    } else if (e.paymentMode == PaymentMode.loan) {
      _showModalBottomSheet(context, e.id!, (MarkUpItem markUpItem) {
        Navigator.pushNamed(context, CustomerLoanPage.routeName, arguments: {
          "name": "Loan payment via ${e.name}",
          "institutionId": e.id,
          "markUp": markUpItem
        });
      });
    } else {
      Navigator.pushNamed(context, CashPaymentPage.routeName, arguments: {
        "cash_type": e.paymentType,
        "cash_type_name": e.name,
        "payment_instruction": e.paymentInstruction
      });
    }
  }
}

_showModalBottomSheet(
    BuildContext context, num institutionId, Function onPeriodClicked) {
  showModalBottomSheet(
      context: context,
      builder: (ctx) => LoanPaymentPeriodBs(
            institutionId: institutionId,
            onPeriodClicked: onPeriodClicked,
          ));
}
