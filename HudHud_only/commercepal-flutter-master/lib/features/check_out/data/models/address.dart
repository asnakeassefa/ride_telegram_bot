import '../../../../core/addresses-core/data/dto/addresses_dto.dart';

class Address {
  final String? name;
  final String? country;
  final String? city;
  final String? subCounty;
  final num? cityId;
  final num? id;
  final num? addressId;
  final String? physicalAddress;
  bool _selected;

  Address(this.id, this.name, this.country, this.city, this.subCounty,
      this.cityId, this._selected, this.physicalAddress, this.addressId);

  bool get selected => _selected ?? false;

  set selected(bool value) {
    _selected = value;
  }

  AddressItem toAddressItem() => AddressItem(
      country: country,
      subCity: subCounty,
      regionId: cityId,
      city: city,
      latitude: "",
      physicalAddress: physicalAddress,
      longitude: "",
      addressId: addressId,
      id: id);
}
