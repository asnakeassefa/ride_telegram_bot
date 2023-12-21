import 'package:commercepal/app/di/injector.dart';
import 'package:commercepal/app/utils/dialog_utils.dart';
import 'package:commercepal/features/addresses/presentation/bloc/address_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/cities-core/presentation/select_city_widget.dart';
import '../../../core/cities-core/presentation/select_country_widget.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/input_decorations.dart';
import 'bloc/address_cubit.dart';

class AddAddressPage extends StatefulWidget {
  static const routeName = "/add_address_page";

  const AddAddressPage({Key? key}) : super(key: key);

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _subCity;
  String? _physicalAddress;

  String? _countryName;
  num? _cityId;
  num? _countryId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Add address",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<AddressCubit>(),
        child: BlocConsumer<AddressCubit, AddressState>(
          listener: (ctx, state) {
            if (state is AddressStateError) {
              displaySnack(ctx, state.error);
            }

            if (state is AddressStateSuccess) {
              displaySnack(ctx, state.msg);
              Navigator.pop(context);
            }
          },
          builder: (ctx, state) {
            return Form(
              key: _formKey,
              child: Container(
                padding: const EdgeInsets.all(12),
                child: ListView(
                  children: [
                    SelectCountryWidget(
                      selectedCountry: (countryName) {
                        _countryName = countryName;
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SelectCityWidget(
                      selectedCity: (cityId, countryId) {
                        _cityId = cityId;
                        _countryId = countryId;

                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (v) {
                          if (v?.isEmpty == true) {
                            return "Sub city is required";
                          }
                          return null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) {
                          setState(() {
                            _subCity = value;
                          });
                        },
                        decoration: buildInputDecoration("Sub city")),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (v) {
                          if (v?.isEmpty == true) {
                            return "Physical address is required";
                          }
                          return null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) {
                          setState(() {
                            _physicalAddress = value;
                          });
                        },
                        decoration: buildInputDecoration("Physical address")),
                    const SizedBox(
                      height: 20,
                    ),
                    AppButtonWidget(
                        isLoading: state is AddressStateLoading,
                        onClick: () {
                          if (_formKey.currentState!.validate()) {
                            ctx.read<AddressCubit>().addAddress(
                                _subCity!,
                                _physicalAddress!,
                                _cityId,
                                _countryId,
                                _countryName);
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
