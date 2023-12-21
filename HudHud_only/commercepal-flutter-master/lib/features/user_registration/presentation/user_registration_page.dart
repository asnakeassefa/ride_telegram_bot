import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/dialog_utils.dart';
import 'package:commercepal/core/cities-core/presentation/select_city_widget.dart';
import 'package:commercepal/core/widgets/app_button.dart';
import 'package:commercepal/features/user_registration/presentation/bloc/user_registration_cubit.dart';
import 'package:commercepal/features/user_registration/presentation/bloc/user_registration_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/cities-core/presentation/select_country_widget.dart';
import '../../../core/widgets/input_decorations.dart';
import '../../set_password/presentation/user_set_password_page.dart';

class UserRegistrationPage extends StatefulWidget {
  static const routeName = "/user_registration_page";

  const UserRegistrationPage({Key? key}) : super(key: key);

  @override
  State<UserRegistrationPage> createState() => _UserRegistrationPageState();
}

class _UserRegistrationPageState extends State<UserRegistrationPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _countryName;
  String? _fName;
  String? _sName;
  String? _email;
  String? _phoneNumber;
  String? _city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Create Account",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<UserRegistrationCubit>(),
        child: BlocConsumer<UserRegistrationCubit, UserRegistrationState>(
          listener: (ctx, state) {
            if (state is UserRegistrationStateError) {
              displaySnack(context, state.msg);
            }

            if (state is UserRegistrationStateSuccess) {
              Navigator.popAndPushNamed(context, UserSetPasswordPage.routeName,
                  arguments: {
                    "phone": state.msg,
                    // parsed phone number is passed as msg, probably create another state for this
                    "email": _email
                  });
            }
          },
          builder: (ctx, state) {
            return Padding(
              padding: const EdgeInsets.all(12),
              child: Form(
                key: _formKey,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    _buildNamesField(),
                    const SizedBox(
                      height: 14,
                    ),
                    _buildEmailField(),
                    const SizedBox(
                      height: 14,
                    ),
                    _buildPhoneNumberField(),
                    const SizedBox(
                      height: 14,
                    ),
                    SelectCountryWidget(
                      selectedCountry: (countryName) {
                        _countryName = countryName;
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SelectCityWidget(
                      selectedCity: (cityId, countryId) {
                        _city = "$cityId";

                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppButtonWidget(
                        isLoading: state is UserRegistrationStateLoading,
                        onClick: () {
                          if (_formKey.currentState?.validate() == true) {
                            ctx.read<UserRegistrationCubit>().createAccount(
                                _fName,
                                _sName,
                                _email,
                                _phoneNumber,
                                _countryName,
                                _city);
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

  _buildNamesField() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            keyboardType: TextInputType.text,
            validator: (v) {
              if (v?.isEmpty == true) {
                return "First name is required";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {
              setState(() {
                _fName = value;
              });
            },
            decoration: buildInputDecoration("First Name"),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextFormField(
            keyboardType: TextInputType.text,
            validator: (v) {
              if (v?.isEmpty == true) {
                return "Second name is required";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) {
              setState(() {
                _sName = value;
              });
            },
            decoration: buildInputDecoration("Second Name"),
          ),
        ),
      ],
    );
  }

  _buildPhoneNumberField() {
    return TextFormField(
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
    );
  }

  _buildEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (v) {
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
      decoration: buildInputDecoration("Email Address (Optional)"),
    );
  }

}
