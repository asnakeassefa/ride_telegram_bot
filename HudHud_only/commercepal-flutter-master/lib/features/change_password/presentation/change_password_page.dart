import 'package:commercepal/app/app.dart';
import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/dialog_utils.dart';
import 'package:commercepal/app/utils/string_utils.dart';
import 'package:commercepal/features/change_password/presentation/bloc/change_password_cubit.dart';
import 'package:commercepal/features/change_password/presentation/bloc/change_password_state.dart';
import 'package:commercepal/features/login/presentation/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/input_decorations.dart';

class ChangePasswordPage extends StatefulWidget {
  static const routeName = "/change_password";

  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _newPassword;
  String? _oldPassword;

  bool _togglePassText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Change your password",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<ChangePasswordCubit>(),
        child: BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
          listener: (ctx, state) {
            if (state is ChangePasswordStateError) {
              displaySnack(ctx, state.error);
            }

            if (state is ChangePasswordStateSuccess) {
              displaySnack(ctx, state.msg);
              Navigator.popAndPushNamed(context, LoginPage.routeName);
            }
          },
          builder: (ctx, state) {
            return Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (v) {
                        if (v?.isEmpty == true) {
                          return "Old password is required";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) {
                        setState(() {
                          _oldPassword = value;
                        });
                      },
                      decoration: buildInputDecoration("Old Password"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: _togglePassText,
                      validator: (v) {
                        if (v?.isEmpty == true) {
                          return "New Password is required";
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
                          _newPassword = value;
                        });
                      },
                      decoration: buildInputDecoration("New Password").copyWith(
                          suffixIcon: GestureDetector(
                        onTap: () {
                          _togglePassText = !_togglePassText;
                          setState(() {});
                        },
                        child: Icon(
                          _togglePassText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppButtonWidget(
                        isLoading: state is ChangePasswordStateLoading,
                        onClick: () {
                          if (_formKey.currentState!.validate()) {
                            ctx
                                .read<ChangePasswordCubit>()
                                .changePassword(_oldPassword!, _newPassword!);
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
}
