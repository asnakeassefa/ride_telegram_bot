import 'package:commercepal/core/cities-core/data/dto/city_core_dto.dart';
import 'package:commercepal/core/cities-core/data/dto/country_dto.dart';

abstract class CityCoreRepo {
  Future<List<City>> getCities();

  Future<List<Country>> getCountries();
}
