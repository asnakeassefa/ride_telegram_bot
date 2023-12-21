import 'package:commercepal/app/utils/dialog_utils.dart';
import 'package:commercepal/app/utils/string_utils.dart';
import 'package:commercepal/core/widgets/app_button.dart';
import 'package:commercepal/features/dashboard/dashboard_page.dart';
import 'package:commercepal/features/set_password/presentation/bloc/user_set_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../../app/di/injector.dart';
import '../../../core/simple-counter/simmple_counter_widget.dart';
import '../../../core/widgets/input_decorations.dart';
import 'bloc/user_set_password_cubit.dart';

class UserSetPasswordPage extends StatefulWidget {
  static const routeName = "/user_set_password_page";

  const UserSetPasswordPage({Key? key}) : super(key: key);

  @override
  State<UserSetPasswordPage> createState() => _UserSetPasswordPageState();
}

class _UserSetPasswordPageState extends State<UserSetPasswordPage>
    with CodeAutoFill {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final _otpController = TextEditingController();

  String? _phone;
  String? _code;
  String? _enteredCode;
  String? _password;
  bool _setPassword = false;
  bool _togglePassText = true;
  bool _displayCounter = true;

  // used to auto validate otp sent to phone
  BuildContext? _buildContext;

  @override
  void initState() {
    super.initState();
    listenForCode();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final args = ModalRoute.of(context)?.settings.arguments as Map;
    _phone = args['phone'];
    // first time password sent, so user enters only new password
    if (args['code'] != null) {
      _displayCounter = false;
      _code = args['code'];
      _setPassword = true;
    }
    setState(() {});
  }

  @override
  void codeUpdated() {
    // set code sent and auto update
    if (code != null) {
      _otpController.text = code!;
      _buildContext?.read<UserSetPasswordCubit>().validateCode(_phone, code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Set password",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<UserSetPasswordCubit>(),
        child: BlocConsumer<UserSetPasswordCubit, UserSetPasswordState>(
          listener: (ctx, state) {
            if (state is UserSetPasswordStateError) {
              displaySnack(ctx, state.msg);
            }

            if (state is UserSetPasswordStatePassword) {
              // no need of counter
              _displayCounter = false;

              _setPassword = true;
              setState(() {});
            }

            if (state is UserSetPasswordStateSuccess) {
              displaySnack(ctx, state.msg);
              // user already logged in
              Navigator.popUntil(
                  ctx, ModalRoute.withName(DashboardPage.routeName));
            }
          },
          builder: (context, state) {
            _buildContext = context;
            return Padding(
              padding: const EdgeInsets.all(12),
              child: Form(
                key: _globalKey,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    if (_code == null) _buildOtpWidgets(),
                    if (_setPassword) _buildPasswordWidgets(),
                    const SizedBox(
                      height: 20,
                    ),
                    AppButtonWidget(
                        isLoading: state is UserSetPasswordStateLoading,
                        onClick: () {
                          if (_globalKey.currentState?.validate() == true) {
                            if (!_setPassword) {
                              context
                                  .read<UserSetPasswordCubit>()
                                  .validateCode(_phone, _enteredCode ?? _code);
                            } else {
                              context
                                  .read<UserSetPasswordCubit>()
                                  .setPassword(_password);
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

  _buildPasswordWidgets() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Enter your new password"),
          const SizedBox(
            height: 5,
          ),
          _buildPasswordField(),
        ],
      );

  _buildCodeField() {
    return TextFormField(
      validator: (v) {
        if (v?.isEmpty == true) {
          return "Code is required";
        }
        return null;
      },
      controller: _otpController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {
        setState(() {
          _enteredCode = value;
        });
      },
      decoration: buildInputDecoration("Code"),
    );
  }

  _buildPasswordField() => TextFormField(
        obscureText: _togglePassText,
        validator: (v) {
          if (v?.isEmpty == true) {
            return "Password is required";
          }
          if (v!.length < 6) {
            return "Password should be at least 6 characters";
          }

          if (!v.isStrongPass()) {
            return "Password must have at least one special character, a number & a capital letter";
          }
          return null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: (value) {
          setState(() {
            _password = value;
          });
        },
        decoration: buildInputDecoration("Password").copyWith(
            suffixIcon: GestureDetector(
          onTap: () {
            _togglePassText = !_togglePassText;
            setState(() {});
          },
          child: Icon(
            _togglePassText ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
        )),
      );

  _buildOtpWidgets() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Enter code sent to your phone number"),
        const SizedBox(
          height: 5,
        ),
        _buildCodeField(),
        if (_setPassword)
          const SizedBox(
            height: 10,
          ),
        if (_setPassword) const Divider(),
        if (_setPassword)
          const SizedBox(
            height: 10,
          ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    cancel();
  }
}
