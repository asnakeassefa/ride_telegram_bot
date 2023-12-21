import 'package:commercepal/core/cities-core/data/dto/country_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/dto/city_core_dto.dart';

part 'city_core_state.freezed.dart';

@freezed
class CityCoreState with _$CityCoreState {
  const factory CityCoreState.init() = CityCoreStateInit;
  const factory CityCoreState.loading() = CityCoreStateLoading;

  const factory CityCoreState.error(String message) = CityCoreStateError;

  const factory CityCoreState.success(String message) = CityCoreStateSuccess;

  const factory CityCoreState.cities(List<City> cities) = CityCoreStateCities;

  const factory CityCoreState.countries(List<Country> countries) =
      CityCoreStateCountries;
}
