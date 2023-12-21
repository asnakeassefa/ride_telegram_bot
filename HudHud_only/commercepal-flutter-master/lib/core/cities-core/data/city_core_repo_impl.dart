
import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/core/cities-core/data/dto/city_core_dto.dart';
import 'package:commercepal/core/cities-core/data/dto/country_dto.dart';
import 'package:commercepal/core/cities-core/domain/city_core_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CityCoreRepo)
class CityCoreRepoImpl implements CityCoreRepo {
  final ApiProvider apiProvider;

  CityCoreRepoImpl(this.apiProvider);

  @override
  Future<List<City>> getCities() async {
    try {
      final response = await apiProvider.get(EndPoints.cities.url);
      if (response['statusCode'] == '000') {
        final responseObj = CityCoreDto.fromJson(response);
        if (responseObj.data?.isEmpty == true) {
          throw 'No cities found';
        }
        return responseObj.data!;
      } else {
        throw response['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Country>> getCountries() async {
    try {
      final response = await apiProvider.get(EndPoints.countries.url);
      if (response['statusCode'] == '000') {
        final responseObj = CountryDto.fromJson(response);
        if (responseObj.data?.isEmpty == true) {
          throw 'No countries found';
        }
        return responseObj.data!;
      } else {
        throw response['statusDescription'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
