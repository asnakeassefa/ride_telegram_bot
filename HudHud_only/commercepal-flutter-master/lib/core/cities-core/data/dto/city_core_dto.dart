import 'dart:convert';

CityCoreDto cityCoreDtoFromJson(String str) =>
    CityCoreDto.fromJson(json.decode(str));

String cityCoreDtoToJson(CityCoreDto data) => json.encode(data.toJson());

class CityCoreDto {
  CityCoreDto({
    String? statusDescription,
    List<City>? data,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _data = data;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  CityCoreDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(City.fromJson(v));
      });
    }
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  List<City>? _data;
  String? _statusMessage;
  String? _statusCode;

  CityCoreDto copyWith({
    String? statusDescription,
    List<City>? data,
    String? statusMessage,
    String? statusCode,
  }) =>
      CityCoreDto(
        statusDescription: statusDescription ?? _statusDescription,
        data: data ?? _data,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  List<City>? get data => _data;

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

City dataFromJson(String str) => City.fromJson(json.decode(str));

String dataToJson(City data) => json.encode(data.toJson());

class City {
  City({
    String? cityName,
    num? cityId,
    num? countryId,
  }) {
    _cityName = cityName;
    _cityId = cityId;
    _countryId = countryId;
  }

  City.fromJson(dynamic json) {
    _cityName = json['cityName'];
    _cityId = json['cityId'];
    _countryId = json['countryId'];
  }

  String? _cityName;
  num? _cityId;
  num? _countryId;

  City copyWith({
    String? cityName,
    num? cityId,
    num? countryId,
  }) =>
      City(
        cityName: cityName ?? _cityName,
        cityId: cityId ?? _cityId,
        countryId: countryId ?? _countryId,
      );

  String? get cityName => _cityName;

  num? get cityId => _cityId;

  num? get countryId => _countryId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cityName'] = _cityName;
    map['cityId'] = _cityId;
    map['countryId'] = _countryId;
    return map;
  }
}
