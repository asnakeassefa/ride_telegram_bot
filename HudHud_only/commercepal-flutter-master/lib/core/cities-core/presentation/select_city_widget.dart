import 'package:commercepal/core/cities-core/data/dto/city_core_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di/injector.dart';
import '../../../app/utils/app_colors.dart';
import '../../../app/utils/dialog_utils.dart';
import 'bloc/city_core_cubit.dart';
import 'bloc/city_core_state.dart';

class SelectCityWidget extends StatefulWidget {
  final Function selectedCity;
  final String? initialValue;

  const SelectCityWidget(
      {Key? key, this.initialValue, required this.selectedCity})
      : super(key: key);

  @override
  State<SelectCityWidget> createState() => _SelectCityWidgetState();
}

class _SelectCityWidgetState extends State<SelectCityWidget> {
  final List<City> _citiesList = [City(cityName: "--")];

  String? _dropdownValue;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CityCoreCubit>()..fetchCities(),
      child: BlocConsumer<CityCoreCubit, CityCoreState>(
        listener: (ctx, state) {
          if (state is CityCoreStateError) {
            displaySnack(context, state.message);
          }

          if (state is CityCoreStateCities) {
            _citiesList
              ..clear()
              ..addAll(state.cities);

            final city = _citiesList.where((element) =>
                element.cityName.toString() == widget.initialValue);
            if (city.isNotEmpty) {
              _dropdownValue = city.first.cityName;
            }
            setState(() {});
          }
        },
        builder: (ctx, state) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: AppColors.fieldBorder.withOpacity(0.8),
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: DropdownButton<String>(
                    value: _dropdownValue,
                    isExpanded: true,
                    hint: const Text(" - Select city -"),
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

                        // cityId, countryId
                        widget.selectedCity.call(
                            _citiesList
                                .where((element) =>
                                    element.cityName == _dropdownValue)
                                .first
                                .cityId,
                            _citiesList
                                .where((element) =>
                                    element.cityName == _dropdownValue)
                                .first
                                .countryId);
                      });
                    },
                    items: _citiesList.map((City value) {
                      return DropdownMenuItem<String>(
                        value: value.cityName,
                        child: Text(value.cityName!),
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
