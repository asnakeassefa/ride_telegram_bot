import 'dart:convert';

CountryDto countryDtoFromJson(String str) =>
    CountryDto.fromJson(json.decode(str));

String countryDtoToJson(CountryDto data) => json.encode(data.toJson());

class CountryDto {
  CountryDto({
    String? statusDescription,
    List<Country>? data,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _data = data;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  CountryDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Country.fromJson(v));
      });
    }
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  List<Country>? _data;
  String? _statusMessage;
  String? _statusCode;

  CountryDto copyWith({
    String? statusDescription,
    List<Country>? data,
    String? statusMessage,
    String? statusCode,
  }) =>
      CountryDto(
        statusDescription: statusDescription ?? _statusDescription,
        data: data ?? _data,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  List<Country>? get data => _data;

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

Country dataFromJson(String str) => Country.fromJson(json.decode(str));

String dataToJson(Country data) => json.encode(data.toJson());

class Country {
  Country({
    String? country,
    String? countryCode,
  }) {
    _country = country;
    _countryCode = countryCode;
  }

  Country.fromJson(dynamic json) {
    _country = json['country'];
    _countryCode = json['countryCode'];
  }

  String? _country;
  String? _countryCode;

  Country copyWith({
    String? country,
    String? countryCode,
  }) =>
      Country(
        country: country ?? _country,
        countryCode: countryCode ?? _countryCode,
      );

  String? get country => _country;

  String? get countryCode => _countryCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['countryCode'] = _countryCode;
    return map;
  }
}
