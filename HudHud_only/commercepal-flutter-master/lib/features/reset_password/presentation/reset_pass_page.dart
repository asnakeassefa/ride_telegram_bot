import 'package:commercepal/app/app.dart';
import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/routes.dart';
import 'package:commercepal/app/utils/string_utils.dart';
import 'package:commercepal/features/change_password/presentation/change_password_page.dart';
import 'package:commercepal/features/login/presentation/login_page.dart';
import 'package:commercepal/features/reset_password/presentation/cubit/reset_pass_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/utils/dialog_utils.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/input_decorations.dart';
import 'cubit/reset_pass_cubit.dart';

class ResetPassPage extends StatefulWidget {
  static const routeName = "/reset_pass";

  const ResetPassPage({Key? key}) : super(key: key);

  @override
  State<ResetPassPage> createState() => _ResetPassPageState();
}

class _ResetPassPageState extends State<ResetPassPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _emailOrPhone;
  String? _code;
  String? _newPass;
  bool _displayCodeField = false;
  bool _displayPasswordField = false;
  bool _togglePassText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: false,
      ),
      body: BlocProvider(
        create: (context) => getIt<ResetPassCubit>(),
        child: BlocConsumer<ResetPassCubit, ResetPassState>(
          listener: (ctx, state) {
            if (state is ResetPassStateError) {
              displaySnack(ctx, state.error);
            }

            if (state is ResetPassStateCode) {
              _displayCodeField = true;
              setState(() {});
            }

            if (state is ResetPassStatePassword) {
              _displayPasswordField = true;
              setState(() {});
            }

            if (state is ResetPassStateSuccess) {
              //  redirect to set new  password
              redirectUserToLogin();
            }
          },
          builder: (ctx, state) {
            return Padding(
              padding: const EdgeInsets.all(14),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    if (!_displayPasswordField)
                      const SizedBox(
                        height: 10,
                      ),
                    if (!_displayPasswordField)
                      TextFormField(
                        validator: (v) {
                          if (v?.isEmpty == true) {
                            return "Email or phone number is required";
                          }
                          return null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) {
                          setState(() {
                            _emailOrPhone = value;
                          });
                        },
                        decoration:
                            buildInputDecoration("Email or Phone number"),
                      ),
                    if (_displayCodeField && !_displayPasswordField)
                      _buildCodeField(),
                    if (_displayPasswordField) _buildPasswordField(),
                    const SizedBox(
                      height: 20,
                    ),
                    AppButtonWidget(
                        isLoading: state is ResetPassStateLoading,
                        onClick: () {
                          if (_formKey.currentState!.validate()) {
                            // last step
                            if (_newPass != null) {
                              ctx.read<ResetPassCubit>().setNewPass(_newPass!);
                              return;
                            }

                            // second step
                            if (_emailOrPhone != null && _code != null) {
                              ctx
                                  .read<ResetPassCubit>()
                                  .confirmCode(_emailOrPhone!, _code!);
                              return;
                            }

                            // first step
                            if (_emailOrPhone != null && _newPass == null) {
                              ctx
                                  .read<ResetPassCubit>()
                                  .requestPassReset(_emailOrPhone!);
                            }
                          }
                        }),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPasswordField() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter your new password",
            style: TextStyle(fontSize: 14.sp),
          ),
          const SizedBox(
            height: 4,
          ),
          TextFormField(
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
                _newPass = value;
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
          ),
        ],
      );

  Widget _buildCodeField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          "Enter the code we sent",
          style: TextStyle(fontSize: 14.sp),
        ),
        const SizedBox(
          height: 4,
        ),
        TextFormField(
          validator: (v) {
            if (v?.isEmpty == true) {
              return "Code is required";
            }
            return null;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) {
            setState(() {
              _code = value;
            });
          },
          decoration: buildInputDecoration("Code"),
        ),
      ],
    );
  }
}
