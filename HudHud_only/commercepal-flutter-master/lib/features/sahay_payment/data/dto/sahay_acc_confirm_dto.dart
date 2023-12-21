import 'dart:convert';

SahayAccConfirmDto sahayAccConfirmDtoFromJson(String str) =>
    SahayAccConfirmDto.fromJson(json.decode(str));

String sahayAccConfirmDtoToJson(SahayAccConfirmDto data) =>
    json.encode(data.toJson());

class SahayAccConfirmDto {
  SahayAccConfirmDto({
    String? statusDescription,
    String? insName,
    String? customerName,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _insName = insName;
    _customerName = customerName;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  SahayAccConfirmDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    _insName = json['InsName'];
    _customerName = json['customerName'];
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  String? _insName;
  String? _customerName;
  String? _statusMessage;
  String? _statusCode;

  SahayAccConfirmDto copyWith({
    String? statusDescription,
    String? insName,
    String? customerName,
    String? statusMessage,
    String? statusCode,
  }) =>
      SahayAccConfirmDto(
        statusDescription: statusDescription ?? _statusDescription,
        insName: insName ?? _insName,
        customerName: customerName ?? _customerName,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  String? get insName => _insName;

  String? get customerName => _customerName;

  String? get statusMessage => _statusMessage;

  String? get statusCode => _statusCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusDescription'] = _statusDescription;
    map['InsName'] = _insName;
    map['customerName'] = _customerName;
    map['statusMessage'] = _statusMessage;
    map['statusCode'] = _statusCode;
    return map;
  }
}
