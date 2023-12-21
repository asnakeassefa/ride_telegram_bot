import 'dart:convert';

AddressesDto addressesDtoFromJson(String str) =>
    AddressesDto.fromJson(json.decode(str));

String addressesDtoToJson(AddressesDto data) => json.encode(data.toJson());

class AddressesDto {
  AddressesDto({
    String? statusDescription,
    List<AddressItem>? data,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _data = data;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  AddressesDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(AddressItem.fromJson(v));
      });
    }
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  List<AddressItem>? _data;
  String? _statusMessage;
  String? _statusCode;

  AddressesDto copyWith({
    String? statusDescription,
    List<AddressItem>? data,
    String? statusMessage,
    String? statusCode,
  }) =>
      AddressesDto(
        statusDescription: statusDescription ?? _statusDescription,
        data: data ?? _data,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  List<AddressItem>? get data => _data;

  String? get statusMessage => _statusMessage;

  String? get statusCode => _statusCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusDescription'] = _statusDescription;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['statusMessage'] = _statusMessage;
    map['statusCode'] = _statusCode;
    return map;
  }
}

AddressItem dataFromJson(String str) => AddressItem.fromJson(json.decode(str));

String dataToJson(AddressItem data) => json.encode(data.toJson());

class AddressItem {
  AddressItem({
    String? country,
    String? subCity,
    num? regionId,
    String? city,
    String? latitude,
    String? physicalAddress,
    num? id,
    num? cityId,
    String? longitude,
    num? addressId,
  }) {
    _country = country;
    _subCity = subCity;
    _regionId = regionId;
    _city = city;
    _latitude = latitude;
    _physicalAddress = physicalAddress;
    _id = id;
    _cityId = cityId;
    _longitude = longitude;
    _addressId = addressId;
  }

  AddressItem.fromJson(dynamic json) {
    _country = json['country'];
    _subCity = json['subCity'];
    _regionId = json['regionId'];
    _city = json['city'];
    _latitude = json['latitude'];
    _physicalAddress = json['physicalAddress'];
    _id = json['id'];
    _cityId = json['cityId'];
    _longitude = json['longitude'];
    _addressId = json['addressId'];
  }

  String? _country;
  String? _subCity;
  num? _regionId;
  String? _city;
  String? _latitude;
  String? _physicalAddress;
  num? _id;
  num? _cityId;
  String? _longitude;
  num? _addressId;

  AddressItem copyWith({
    String? country,
    String? subCity,
    num? regionId,
    String? city,
    String? latitude,
    String? physicalAddress,
    num? id,
    num? cityId,
    String? longitude,
    num? addressId,
  }) =>
      AddressItem(
        country: country ?? _country,
        subCity: subCity ?? _subCity,
        regionId: regionId ?? _regionId,
        city: city ?? _city,
        latitude: latitude ?? _latitude,
        physicalAddress: physicalAddress ?? _physicalAddress,
        id: id ?? _id,
        cityId: cityId ?? _cityId,
        longitude: longitude ?? _longitude,
        addressId: addressId ?? _addressId,
      );

  String? get country => _country;

  String? get subCity => _subCity;

  num? get regionId => _regionId;

  String? get city => _city;

  String? get latitude => _latitude;

  String? get physicalAddress => _physicalAddress;

  num? get id => _id;

  num? get cityId => _cityId;

  String? get longitude => _longitude;

  num? get addressId => _addressId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['subCity'] = _subCity;
    map['regionId'] = _regionId;
    map['city'] = _city;
    map['latitude'] = _latitude;
    map['physicalAddress'] = _physicalAddress;
    map['id'] = _id;
    map['cityId'] = _cityId;
    map['longitude'] = _longitude;
    map['addressId'] = _addressId;
    return map;
  }
}
