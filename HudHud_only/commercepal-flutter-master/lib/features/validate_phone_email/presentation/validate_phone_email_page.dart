import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/dialog_utils.dart';
import 'package:commercepal/core/widgets/app_button.dart';
import 'package:commercepal/features/validate_phone_email/presentation/blocs/validate_cubit.dart';
import 'package:commercepal/features/validate_phone_email/presentation/blocs/validate_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../../core/simple-counter/simmple_counter_widget.dart';
import '../../../core/widgets/input_decorations.dart';

class ValidatePhoneEmailPage extends StatefulWidget {
  static const routeName = "/validate_phone_email";

  const ValidatePhoneEmailPage({Key? key}) : super(key: key);

  @override
  State<ValidatePhoneEmailPage> createState() => _ValidatePhoneEmailPageState();
}

class _ValidatePhoneEmailPageState extends State<ValidatePhoneEmailPage>
    with CodeAutoFill {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _textEditingController = TextEditingController();

  String? _email;
  String? _phoneNumber;
  String? _otp;
  bool _displayOtp = false;
  bool _displayCounter = false;

  // used to ref to initiated provider
  BuildContext? _buildContext;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final args = ModalRoute.of(context)?.settings.arguments as Map;
    if (args['email'] != null) {
      _email = args['email'];
    }

    if (args['phoneNumber'] != null) {
      _phoneNumber = args['phoneNumber'];
    }

    setState(() {});
  }

  @override
  void codeUpdated() {
    if (code != null) {
      _textEditingController.text = code!;
      _buildContext
          ?.read<ValidateCubit>()
          .confirmOtp(_email, _phoneNumber, code!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Validate your ${_email != null ? 'email' : 'phone number'}",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<ValidateCubit>(),
        child: BlocConsumer<ValidateCubit, ValidateState>(
          listener: (ctx, state) {
            if (state is ValidateStateOtp) {
              _displayOtp = true;
              // start listening for a code if its a phone number
              if (_phoneNumber != null) {
                listenForCode();
                _displayCounter = true;
              }
              setState(() {});
            }

            if (state is ValidateStateSuccess) {
              displaySnack(context, state.success);

              Navigator.pop(ctx);
            }

            if (state is ValidateStateError) {
              displaySnack(context, state.error);
            }
          },
          builder: (ctx, state) {
            _buildContext = ctx;
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    if (_email != null) _buildEmailWidget(),
                    if (_phoneNumber != null)
                      const SizedBox(
                        height: 16,
                      ),
                    if (_phoneNumber != null) _buildPhoneWidget(),
                    if (_displayOtp) _buildOtpWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    AppButtonWidget(
                        isLoading: state is ValidateStateLoading,
                        onClick: () {
                          if (_formKey.currentState?.validate() == true) {
                            if (_displayOtp) {
                              ctx
                                  .read<ValidateCubit>()
                                  .confirmOtp(_email, _phoneNumber, _otp!);
                            } else {
                              ctx
                                  .read<ValidateCubit>()
                                  .requestValidation(_email, _phoneNumber);
                            }
                          }
                        }),
                    if (_displayCounter)
                      const Center(
                        child: SimpleCounterWidget(
                          seconds: 60,
                        ),
                      )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _buildEmailWidget() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      initialValue: _email,
      enabled: _email == null,
      validator: (v) {
        if (v?.isEmpty == true) {
          return "Email is required";
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
      decoration: buildInputDecoration("Email"),
    );
  }

  _buildPhoneWidget() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      initialValue: _phoneNumber,
      enabled: _phoneNumber != null,
      validator: (v) {
        if (v?.isEmpty == true) {
          return "Email is required";
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
      decoration: buildInputDecoration("Email"),
    );
  }

  _buildOtpWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        Text(
            "Enter OTP sent to your ${_email != null ? 'email' : 'phone number'}"),
        const SizedBox(
          height: 4,
        ),
        TextFormField(
          validator: (v) {
            if (v?.isEmpty == true) {
              return "OTP is required";
            }
            return null;
          },
          controller: _textEditingController,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) {
            setState(() {
              _otp = value;
            });
          },
          decoration: buildInputDecoration("OTP"),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    cancel();
  }
}
