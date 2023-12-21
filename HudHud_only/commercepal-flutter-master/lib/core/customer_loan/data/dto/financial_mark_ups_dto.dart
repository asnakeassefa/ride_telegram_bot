import 'dart:convert';

FinancialMarkUpsDto financialMarkUpsDtoFromJson(String str) =>
    FinancialMarkUpsDto.fromJson(json.decode(str));

String financialMarkUpsDtoToJson(FinancialMarkUpsDto data) =>
    json.encode(data.toJson());

class FinancialMarkUpsDto {
  FinancialMarkUpsDto({
    String? statusDescription,
    List<MarkUpItem>? markUps,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _markUps = markUps;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  FinancialMarkUpsDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    if (json['markUps'] != null) {
      _markUps = [];
      json['markUps'].forEach((v) {
        _markUps?.add(MarkUpItem.fromJson(v));
      });
    }
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  List<MarkUpItem>? _markUps;
  String? _statusMessage;
  String? _statusCode;

  FinancialMarkUpsDto copyWith({
    String? statusDescription,
    List<MarkUpItem>? markUps,
    String? statusMessage,
    String? statusCode,
  }) =>
      FinancialMarkUpsDto(
        statusDescription: statusDescription ?? _statusDescription,
        markUps: markUps ?? _markUps,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  List<MarkUpItem>? get markUps => _markUps;

  String? get statusMessage => _statusMessage;

  String? get statusCode => _statusCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusDescription'] = _statusDescription;
    if (_markUps != null) {
      map['markUps'] = _markUps?.map((v) => v.toJson()).toList();
    }
    map['statusMessage'] = _statusMessage;
    map['statusCode'] = _statusCode;
    return map;
  }
}

MarkUpItem markUpsFromJson(String str) => MarkUpItem.fromJson(json.decode(str));

String markUpsToJson(MarkUpItem data) => json.encode(data.toJson());

class MarkUpItem {
  MarkUpItem({
    num? markUpValue,
    num? periodValue,
    String? period,
    num? id,
  }) {
    _markUpValue = markUpValue;
    _periodValue = periodValue;
    _period = period;
    _id = id;
  }

  MarkUpItem.fromJson(dynamic json) {
    _markUpValue = json['MarkUpValue'];
    _periodValue = json['PeriodValue'];
    _period = json['Period'];
    _id = json['Id'];
  }

  num? _markUpValue;
  num? _periodValue;
  String? _period;
  num? _id;

  MarkUpItem copyWith({
    num? markUpValue,
    num? periodValue,
    String? period,
    num? id,
  }) =>
      MarkUpItem(
        markUpValue: markUpValue ?? _markUpValue,
        periodValue: periodValue ?? _periodValue,
        period: period ?? _period,
        id: id ?? _id,
      );

  num? get markUpValue => _markUpValue;

  num? get periodValue => _periodValue;

  String? get period => _period;

  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['MarkUpValue'] = _markUpValue;
    map['PeriodValue'] = _periodValue;
    map['Period'] = _period;
    map['Id'] = _id;
    return map;
  }
}
