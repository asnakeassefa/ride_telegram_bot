import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/features/dashboard/widgets/home_error_widget.dart';
import 'package:commercepal/features/dashboard/widgets/home_loading_widget.dart';
import 'package:commercepal/features/payment/presentation/bloc/payment_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/payment_cubit.dart';

class LoanPaymentPeriodBs extends StatelessWidget {
  final num institutionId;
  final Function onPeriodClicked;

  const LoanPaymentPeriodBs({Key? key, required this.institutionId, required this.onPeriodClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PaymentCubit>()..fetchMarkUps(institutionId),
      child: BlocBuilder<PaymentCubit, PaymentState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => const HomeLoadingWidget(),
              loading: () => Wrap(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(50.0),
                        child: HomeLoadingWidget(
                           message: "Fetching bank repayment period",
                        ),
                      ),
                    ],
                  ),
              error: (error) => Wrap(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(50),
                          alignment: Alignment.center,
                          child: HomeErrorWidget(error: error)),
                    ],
                  ),
              institutionMarkUps: (data) => Container(
                    padding: const EdgeInsets.all(14),
                    child: Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0, top: 10),
                          child: Row(
                            children: [
                              Text(
                                "Select payment period",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const Spacer(),
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(Icons.close))
                            ],
                          ),
                        ),
                        ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (ctx, index) => Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          const BorderRadius.all(Radius.circular(6)),
                                      border: Border.all(
                                          color: Colors.grey, width: 0.5)),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                      onPeriodClicked(data[index]);
                                    },
                                    child: ListTile(
                                      title: Text(
                                        "${data[index].periodValue} ${data[index].period}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                      trailing: const Icon(
                                          Icons.arrow_forward_ios_outlined),
                                    ),
                                  ),
                                ),
                            separatorBuilder: (_, __) => const SizedBox(
                                  height: 16,
                                ),
                            itemCount: data.length)
                      ],
                    ),
                  ));
        },
      ),
    );
  }
}
