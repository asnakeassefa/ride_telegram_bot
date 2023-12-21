import 'package:commercepal/app/utils/app_colors.dart';
import 'package:commercepal/app/utils/dialog_utils.dart';
import 'package:commercepal/core/cities-core/data/dto/country_dto.dart';
import 'package:commercepal/core/cities-core/presentation/bloc/city_core_state.dart';
import 'package:commercepal/features/selected_product/presentation/bloc/selected_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di/injector.dart';
import 'bloc/city_core_cubit.dart';

class SelectCountryWidget extends StatefulWidget {
  final Function selectedCountry;
  final String? initialValue;

  const SelectCountryWidget(
      {Key? key, this.initialValue, required this.selectedCountry})
      : super(key: key);

  @override
  State<SelectCountryWidget> createState() => _SelectCountryWidgetState();
}

class _SelectCountryWidgetState extends State<SelectCountryWidget> {
  final List<Country> _countriesList = [Country(country: "--")];

  String? _dropdownValue;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CityCoreCubit>()..fetchCountries(),
      child: BlocConsumer<CityCoreCubit, CityCoreState>(
        listener: (ctx, state) {
          if (state is CityCoreStateError) {
            displaySnack(context, state.message);
          }

          if (state is CityCoreStateCountries) {
            _countriesList
              ..clear()
              ..addAll(state.countries);

            // set initial value
            final country = _countriesList
                .where((element) => element.countryCode == widget.initialValue);
            if (country.isNotEmpty) {
              _dropdownValue = country.first.country;
            }

            setState(() {});
          }
        },
        builder: (ctx, state) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration:  BoxDecoration(
              color: AppColors.fieldBorder.withOpacity(0.8),
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: DropdownButton<String>(
                    value: _dropdownValue,
                    isExpanded: true,
                    hint: const Text(" - Select country -"),
                    icon: const Icon(Icons.arrow_drop_down_outlined),
                    elevation: 16,
                    style: Theme.of(context).textTheme.titleMedium,
                    underline: Container(
                      color: Colors.transparent,
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        _dropdownValue = value!;
                        widget.selectedCountry.call(_countriesList
                            .where(
                                (element) => element.country == _dropdownValue)
                            .first
                            .countryCode);
                      });
                    },
                    items: _countriesList.map((Country value) {
                      return DropdownMenuItem<String>(
                        value: value.country,
                        child: Text(value.country!),
                      );
                    }).toList(),
                  ),
                ),
                if (state is CityCoreStateLoading)
                  const SizedBox(
                    width: 10,
                  ),
                if (state is CityCoreStateLoading)
                  const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 1,
                      ))
              ],
            ),
          );
        },
      ),
    );
  }
}
