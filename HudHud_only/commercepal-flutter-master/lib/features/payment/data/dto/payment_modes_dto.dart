import 'dart:convert';

enum PaymentMode { cash, loan, mobileMoney }

PaymentModesDto paymentModesDtoFromJson(String str) =>
    PaymentModesDto.fromJson(json.decode(str));

String paymentModesDtoToJson(PaymentModesDto data) =>
    json.encode(data.toJson());

class PaymentModesDto {
  PaymentModesDto({
    String? statusDescription,
    PaymentModes? data,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _data = data;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  PaymentModesDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    _data = json['data'] != null ? PaymentModes.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  PaymentModes? _data;
  String? _statusMessage;
  String? _statusCode;

  PaymentModesDto copyWith({
    String? statusDescription,
    PaymentModes? data,
    String? statusMessage,
    String? statusCode,
  }) =>
      PaymentModesDto(
        statusDescription: statusDescription ?? _statusDescription,
        data: data ?? _data,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  PaymentModes? get data => _data;

  String? get statusMessage => _statusMessage;

  String? get statusCode => _statusCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusDescription'] = _statusDescription;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['statusMessage'] = _statusMessage;
    map['statusCode'] = _statusCode;
    return map;
  }
}

PaymentModes dataFromJson(String str) =>
    PaymentModes.fromJson(json.decode(str));

String dataToJson(PaymentModes data) => json.encode(data.toJson());

class PaymentModes {
  PaymentModes({
    List<PaymentMethods>? paymentMethods,
  }) {
    _paymentMethods = paymentMethods;
  }

  PaymentModes.fromJson(dynamic json) {
    if (json['paymentMethods'] != null) {
      _paymentMethods = [];
      json['paymentMethods'].forEach((v) {
        _paymentMethods?.add(PaymentMethods.fromJson(v));
      });
    }
  }

  List<PaymentMethods>? _paymentMethods;

  PaymentModes copyWith({
    List<PaymentMethods>? paymentMethods,
  }) =>
      PaymentModes(
        paymentMethods: paymentMethods ?? _paymentMethods,
      );

  List<PaymentMethods>? get paymentMethods => _paymentMethods;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_paymentMethods != null) {
      map['paymentMethods'] = _paymentMethods?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

PaymentMethods paymentMethodsFromJson(String str) =>
    PaymentMethods.fromJson(json.decode(str));

String paymentMethodsToJson(PaymentMethods data) => json.encode(data.toJson());

class PaymentMethods {
  PaymentMethods({
    String? name,
    String? paymentMethod,
    String? iconUrl,
    List<PaymentMethodItem>? items,
  }) {
    _name = name;
    _paymentMethod = paymentMethod;
    _iconUrl = iconUrl;
    _items = items;
  }

  PaymentMethods.fromJson(dynamic json) {
    _name = json['name'];
    _paymentMethod = json['paymentMethod'];
    _iconUrl = json['iconUrl'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(PaymentMethodItem.fromJson(v));
      });
    }
  }

  String? _name;
  String? _paymentMethod;
  String? _iconUrl;
  List<PaymentMethodItem>? _items;

  PaymentMethods copyWith({
    String? name,
    String? paymentMethod,
    String? iconUrl,
    List<PaymentMethodItem>? items,
  }) =>
      PaymentMethods(
        name: name ?? _name,
        paymentMethod: paymentMethod ?? _paymentMethod,
        iconUrl: iconUrl ?? _iconUrl,
        items: items ?? _items,
      );

  String? get name => _name;

  String? get paymentMethod => _paymentMethod;

  String? get iconUrl => _iconUrl;

  List<PaymentMethodItem>? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['paymentMethod'] = _paymentMethod;
    map['iconUrl'] = _iconUrl;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

PaymentMethodItem itemsFromJson(String str) =>
    PaymentMethodItem.fromJson(json.decode(str));

String itemsToJson(PaymentMethodItem data) => json.encode(data.toJson());

class PaymentMethodItem {
  PaymentMethodItem(
      {String? name,
      String? paymentMethod,
      String? iconUrl,
      String? paymentType,
      String? paymentInstruction,
      num? id, PaymentMode? paymentMode}) {
    _name = name;
    _paymentMethod = paymentMethod;
    _iconUrl = iconUrl;
    _paymentType = paymentType;
    _paymentInstruction = paymentInstruction;
    _id = id;
    _paymentMode  = paymentMode;
  }

  PaymentMethodItem.fromJson(dynamic json) {
    _name = json['name'];
    _paymentMethod = json['paymentMethod'];
    _iconUrl = json['iconUrl'];
    _paymentType = json['paymentType'];
    _paymentInstruction = json['paymentInstruction'];
  }

  num? _id;
  String? _name;
  String? _paymentMethod;
  String? _iconUrl;
  String? _paymentType;
  String? _paymentInstruction;
  PaymentMode? _paymentMode;

  PaymentMethodItem copyWith(
          {String? name,
          String? paymentMethod,
          String? iconUrl,
          String? paymentType,
          String? paymentInstruction}) =>
      PaymentMethodItem(
          name: name ?? _name,
          paymentMethod: paymentMethod ?? _paymentMethod,
          iconUrl: iconUrl ?? _iconUrl,
          paymentType: paymentType ?? _paymentType,
          paymentInstruction: paymentInstruction ?? _paymentInstruction);

  String? get name => _name;

  String? get paymentMethod => _paymentMethod;

  String? get iconUrl => _iconUrl;

  String? get paymentType => _paymentType;

  String? get paymentInstruction => _paymentInstruction;

  num? get id => _id;

  PaymentMode? get paymentMode => _paymentMode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['paymentMethod'] = _paymentMethod;
    map['iconUrl'] = _iconUrl;
    map['paymentType'] = _paymentType;
    return map;
  }
}
