import 'dart:convert';

import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/app_colors.dart';
import 'package:commercepal/app/utils/dialog_utils.dart';
import 'package:commercepal/app/utils/string_utils.dart';
import 'package:commercepal/core/widgets/commercepal_app_bar.dart';
import 'package:commercepal/features/cash_payment/presentation/bloc/cash_payment_cubit.dart';
import 'package:commercepal/features/cash_payment/presentation/bloc/cash_payment_state.dart';
import 'package:commercepal/features/dashboard/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/input_decorations.dart';

class CashPaymentPage extends StatefulWidget {
  static const routeName = "/cash_payment";

  const CashPaymentPage({Key? key}) : super(key: key);

  @override
  State<CashPaymentPage> createState() => _CashPaymentPageState();
}

class _CashPaymentPageState extends State<CashPaymentPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _phoneNumber;
  String? _cashType;
  String? _cashTypeName;
  bool _validatePayment = false;
  List<String> _instructions = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final Map args = ModalRoute.of(context)?.settings.arguments as Map;
    _cashType = args['cash_type'];
    _cashTypeName = args['cash_type_name'];
    if (args['payment_instruction'] != null) {
      _instructions =
          (args['payment_instruction'] as String).convertStringToList('data');
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildCommerceAppBar(context, "$_cashTypeName Payment", null, false),
      body: BlocProvider(
        create: (context) => getIt<CashPaymentCubit>(),
        child: BlocConsumer<CashPaymentCubit, CashPaymentState>(
          listener: (ctx, state) {
            if (state is CashPaymentStateError) {
              displaySnack(ctx, state.message);
            }

            if (state is CashPaymentStateSuccess) {
              displaySnack(context, state.message);

              Navigator.of(context).pushNamedAndRemoveUntil(
                  DashboardPage.routeName, (Route<dynamic> route) => false);
            }

            if (state is CashPaymentStateValidateCode) {
              _validatePayment = true;
              setState(() {});
            }
          },
          builder: (ctx, state) {
            return Container(
              padding: const EdgeInsets.all(12),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    _buildPaymentInstructions(),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Enter your phone number below'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      enabled: !_validatePayment,
                      validator: (v) {
                        if (v?.isEmpty == true) {
                          return "Phone number is required";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) {
                        setState(() {
                          _phoneNumber = value;
                        });
                      },
                      decoration: buildInputDecoration("Phone number"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (!_validatePayment)
                      AppButtonWidget(
                          isLoading: state is CashPaymentStateLoading,
                          onClick: () {
                            if (_formKey.currentState?.validate() == true) {
                              FocusManager.instance.primaryFocus?.unfocus();
                              ctx
                                  .read<CashPaymentCubit>()
                                  .submitCashPayment(_phoneNumber!, _cashType!);
                            }
                          }),
                    if (_validatePayment) _buildValidatePayment(state, ctx)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPaymentInstructions() {
    if (_instructions.isNotEmpty) {
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Payment Instructions",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _instructions
                  .map((e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("- $e"),
                      ))
                  .toList(),
            )
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  _buildValidatePayment(CashPaymentState state, BuildContext ctx) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        const Text(
            'Finished making your hello cash payment! Press below button to complete your payment'),
        const SizedBox(
          height: 10,
        ),
        AppButtonWidget(
            isLoading: state is CashPaymentStateLoading,
            text: "Complete payment",
            onClick: () {
              if (_formKey.currentState?.validate() == true) {
                FocusManager.instance.primaryFocus?.unfocus();
                ctx.read<CashPaymentCubit>().validateHelloCashPayment();
              }
            }),
        const SizedBox(
          height: 6,
        ),
        Center(
          child: TextButton(
              onPressed: () {
                ctx
                    .read<CashPaymentCubit>()
                    .submitCashPayment(_phoneNumber!, _cashType!);
              },
              child: const Text(
                "Retry payment?",
                style: TextStyle(color: AppColors.colorPrimaryDark),
              )),
        )
      ],
    );
  }
}
