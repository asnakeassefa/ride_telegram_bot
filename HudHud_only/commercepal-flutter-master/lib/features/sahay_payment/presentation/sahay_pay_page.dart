import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/app_colors.dart';
import 'package:commercepal/app/utils/dialog_utils.dart';
import 'package:commercepal/app/utils/string_utils.dart';
import 'package:commercepal/core/widgets/app_button.dart';
import 'package:commercepal/core/widgets/commercepal_app_bar.dart';
import 'package:commercepal/features/sahay_payment/presentation/bloc/sahay_payment_cubit.dart';
import 'package:commercepal/features/sahay_payment/presentation/bloc/sahay_payment_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/input_decorations.dart';
import '../../dashboard/dashboard_page.dart';

class SahayPayPage extends StatefulWidget {
  static const routeName = "/sahay_page";

  const SahayPayPage({Key? key}) : super(key: key);

  @override
  State<SahayPayPage> createState() => _SahayPayPageState();
}

class _SahayPayPageState extends State<SahayPayPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _phoneNumber;
  String? _otp;
  String? _displayConfirmation;
  bool _displayOtp = false;
  List<String> _paymentInstructions = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final Map args = ModalRoute.of(context)?.settings.arguments as Map;
    if (args['payment_instruction'] != null) {
      _paymentInstructions =
          (args['payment_instruction'] as String).convertStringToList('data');
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildCommerceAppBar(context, "Sahay Pay", null, false),
      body: BlocProvider(
        create: (context) => getIt<SahayPaymentCubit>(),
        child: BlocConsumer<SahayPaymentCubit, SahayPaymentState>(
          listener: (ctx, state) {
            if (state is SahayPaymentStateError) {
              displaySnack(ctx, state.message);
            }

            if (state is SahayPaymentStateConfirmation) {
              setState(() {
                _displayConfirmation = state.name;
              });
            }

            if (state is SahayPaymentStateOtp) {
              setState(() {
                _displayOtp = true;
              });
            }

            if (state is SahayPaymentStateSuccess) {
              displaySnack(context, state.message);

              Navigator.of(context).pushNamedAndRemoveUntil(
                  DashboardPage.routeName, (Route<dynamic> route) => false);
            }
          },
          builder: (ctx, state) {
            return Container(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    _buildPaymentInstructions(),
                    if (_paymentInstructions.isNotEmpty) Divider(),
                    const Text('Enter your phone number below'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
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
                    if (_displayConfirmation != null)
                      _buildConfirmationWidget(_displayConfirmation!),
                    if (_displayOtp) _buildOtpWidget(),
                    AppButtonWidget(
                        isLoading: state is SahayPaymentStateLoading,
                        onClick: () {
                          if (_formKey.currentState?.validate() == true) {
                            FocusManager.instance.primaryFocus?.unfocus();

                            ctx
                                .read<SahayPaymentCubit>()
                                .submitRequest(_phoneNumber, _otp);
                          }
                        })
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildConfirmationWidget(String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        const Divider(),
        const SizedBox(
          height: 5,
        ),
        Text(
          'User name',
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: AppColors.secondaryTextColor),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Colors.black),
        ),
        const SizedBox(
          height: 5,
        ),
        if (_displayOtp == false) const Divider(),
        if (_displayOtp == false)
          const SizedBox(
            height: 5,
          ),
      ],
    );
  }

  Widget _buildOtpWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        const Divider(),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Enter OTP sent to the above phone number',
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: AppColors.secondaryTextColor),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          validator: (v) {
            if (v?.isEmpty == true) {
              return "OTP is required";
            }
            return null;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) {
            setState(() {
              _otp = value;
            });
          },
          decoration: buildInputDecoration("OTP"),
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }

  Widget _buildPaymentInstructions() {
    if (_paymentInstructions.isNotEmpty) {
      return Container(
        padding: const EdgeInsets.all(10),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
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
              children: _paymentInstructions
                  .map((e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("- $e"),
                      ))
                  .toList(),
            ),
            const Divider(),
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
