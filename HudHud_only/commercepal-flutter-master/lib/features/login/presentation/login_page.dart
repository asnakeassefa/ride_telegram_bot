import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/assets.dart';
import 'package:commercepal/app/utils/dialog_utils.dart';
import 'package:commercepal/core/widgets/app_button.dart';
import 'package:commercepal/features/check_out/presentation/check_out_page.dart';
import 'package:commercepal/features/dashboard/dashboard_page.dart';
import 'package:commercepal/features/login/presentation/bloc/login_cubit.dart';
import 'package:commercepal/features/login/presentation/bloc/login_state.dart';
import 'package:commercepal/features/reset_password/presentation/reset_pass_page.dart';
import 'package:commercepal/features/set_password/presentation/user_set_password_page.dart';
import 'package:commercepal/features/user_registration/presentation/user_registration_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/utils/app_colors.dart';
import '../../../core/widgets/input_decorations.dart';

class LoginPage extends StatefulWidget {
  static const routeName = "/login";

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _emailOrPhone;
  String? _pass;

  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => getIt<LoginCubit>(),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (ctx, state) {
            if (state is LoginStateError) {
              displaySnack(context, state.message);
            }

            if (state is LoginStateSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, DashboardPage.routeName, (route) => false);
            }

            if (state is LoginStateSetPin) {
              Navigator.pushNamed(context, UserSetPasswordPage.routeName,
                  arguments: {"phone": state.phoneNumber, "code": _pass});
            }
          },
          builder: (ctx, state) {
            return SafeArea(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.appIcon,
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        "Login to continue",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                              buildInputDecoration("Email Or Phone number")),
                      const SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        obscureText: _isObscure,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (v) {
                          if (v?.isEmpty == true) {
                            return "Password is required";
                          }
                          return null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration:InputDecoration(
                          
                        ),
                        onChanged: (value) {
                          setState(() {
                            _pass = value;
                          });
                        },
                        decoration: buildInputDecoration("Password"),
                        
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, ResetPassPage.routeName);
                            },
                            child: Text(
                              "Forgot password?",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: AppColors.secondaryTextColor),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppButtonWidget(
                          isLoading: state is LoginStateLoading,
                          onClick: () {
                            if (_formKey.currentState!.validate()) {
                              FocusScope.of(context).unfocus();

                              ctx
                                  .read<LoginCubit>()
                                  .loginUser(_emailOrPhone!, _pass!);
                            }
                          }),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, UserRegistrationPage.routeName);
                        },
                        child: Text(
                          "Create Account?",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: AppColors.colorPrimary),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
