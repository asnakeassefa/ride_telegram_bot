import 'dart:convert';

SahayPayCheckoutDto sahayPayCheckoutDtoFromJson(String str) =>
    SahayPayCheckoutDto.fromJson(json.decode(str));

String sahayPayCheckoutDtoToJson(SahayPayCheckoutDto data) =>
    json.encode(data.toJson());

class SahayPayCheckoutDto {
  SahayPayCheckoutDto({
    String? statusDescription,
    String? orderRef,
    String? transRef,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _orderRef = orderRef;
    _transRef = transRef;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  SahayPayCheckoutDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    _orderRef = json['OrderRef'];
    _transRef = json['TransRef'];
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  String? _orderRef;
  String? _transRef;
  String? _statusMessage;
  String? _statusCode;

  SahayPayCheckoutDto copyWith({
    String? statusDescription,
    String? orderRef,
    String? transRef,
    String? statusMessage,
    String? statusCode,
  }) =>
      SahayPayCheckoutDto(
        statusDescription: statusDescription ?? _statusDescription,
        orderRef: orderRef ?? _orderRef,
        transRef: transRef ?? _transRef,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  String? get orderRef => _orderRef;

  String? get transRef => _transRef;

  String? get statusMessage => _statusMessage;

  String? get statusCode => _statusCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusDescription'] = _statusDescription;
    map['OrderRef'] = _orderRef;
    map['TransRef'] = _transRef;
    map['statusMessage'] = _statusMessage;
    map['statusCode'] = _statusCode;
    return map;
  }
}
