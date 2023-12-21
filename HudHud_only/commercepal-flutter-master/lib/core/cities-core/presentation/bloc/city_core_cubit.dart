import 'package:bloc/bloc.dart';
import 'package:commercepal/core/cities-core/presentation/bloc/city_core_state.dart';
import 'package:injectable/injectable.dart';

import '../../domain/city_core_repo.dart';

@injectable
class CityCoreCubit extends Cubit<CityCoreState> {
  final CityCoreRepo cityCoreRepo;

  CityCoreCubit(this.cityCoreRepo) : super(const CityCoreState.init());

  void fetchCities() async {
    try {
      emit(const CityCoreState.loading());
      final cities = await cityCoreRepo.getCities();
      emit(CityCoreState.cities(cities));
    } catch (e) {
      emit(CityCoreState.error(e.toString()));
    }
  }

  void fetchCountries() async {
    try {
      emit(const CityCoreState.loading());
      final cities = await cityCoreRepo.getCountries();
      emit(CityCoreState.countries(cities));
    } catch (e) {
      emit(CityCoreState.error(e.toString()));
    }
  }
}
