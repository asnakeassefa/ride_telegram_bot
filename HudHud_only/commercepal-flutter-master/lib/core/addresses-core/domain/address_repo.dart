import 'package:commercepal/core/addresses-core/data/dto/addresses_dto.dart';

abstract class AddressRepo {
  Future<List<AddressItem>> getAddresses();
  Future<String> deleteAddress(num addressId);
  Future<String> addAddress(String subCity, String physicalName, num cityId,
      num countryId, String country);

  Future<String> updateAddress(num addressId, String subCity, String physicalName, num cityId,
      num countryId, String country);
}
