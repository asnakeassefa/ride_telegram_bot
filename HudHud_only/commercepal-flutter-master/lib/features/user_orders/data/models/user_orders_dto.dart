import 'dart:convert';

UserOrdersDto userOrdersDtoFromJson(String str) =>
    UserOrdersDto.fromJson(json.decode(str));

String userOrdersDtoToJson(UserOrdersDto data) => json.encode(data.toJson());

class UserOrdersDto {
  UserOrdersDto({
    String? statusDescription,
    List<UserOrder>? data,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _data = data;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  UserOrdersDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(UserOrder.fromJson(v));
      });
    }
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  List<UserOrder>? _data;
  String? _statusMessage;
  String? _statusCode;

  UserOrdersDto copyWith({
    String? statusDescription,
    List<UserOrder>? data,
    String? statusMessage,
    String? statusCode,
  }) =>
      UserOrdersDto(
        statusDescription: statusDescription ?? _statusDescription,
        data: data ?? _data,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  List<UserOrder>? get data => _data;

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

UserOrder dataFromJson(String str) => UserOrder.fromJson(json.decode(str));

String dataToJson(UserOrder data) => json.encode(data.toJson());

class UserOrder {
  UserOrder({
    num? discount,
    String? paymentDate,
    num? totalPrice,
    String? orderRef,
    String? paymentMethod,
    num? deliveryPrice,
    num? orderId,
    num? paymentStatus,
    String? orderDate,
  }) {
    _discount = discount;
    _paymentDate = paymentDate;
    _totalPrice = totalPrice;
    _orderRef = orderRef;
    _paymentMethod = paymentMethod;
    _deliveryPrice = deliveryPrice;
    _orderId = orderId;
    _paymentStatus = paymentStatus;
    _orderDate = orderDate;
  }

  UserOrder.fromJson(dynamic json) {
    _discount = json['Discount'];
    _paymentDate = json['PaymentDate'];
    _totalPrice = json['TotalPrice'];
    _orderRef = json['OrderRef'];
    _paymentMethod = json['PaymentMethod'];
    _deliveryPrice = json['DeliveryPrice'];
    _orderId = json['OrderId'];
    _paymentStatus = json['PaymentStatus'];
    _orderDate = json['OrderDate'];
  }

  num? _discount;
  String? _paymentDate;
  num? _totalPrice;
  String? _orderRef;
  String? _paymentMethod;
  num? _deliveryPrice;
  num? _orderId;
  num? _paymentStatus;
  String? _orderDate;

  UserOrder copyWith({
    num? discount,
    String? paymentDate,
    num? totalPrice,
    String? orderRef,
    String? paymentMethod,
    num? deliveryPrice,
    num? orderId,
    num? paymentStatus,
    String? orderDate,
  }) =>
      UserOrder(
        discount: discount ?? _discount,
        paymentDate: paymentDate ?? _paymentDate,
        totalPrice: totalPrice ?? _totalPrice,
        orderRef: orderRef ?? _orderRef,
        paymentMethod: paymentMethod ?? _paymentMethod,
        deliveryPrice: deliveryPrice ?? _deliveryPrice,
        orderId: orderId ?? _orderId,
        paymentStatus: paymentStatus ?? _paymentStatus,
        orderDate: orderDate ?? _orderDate,
      );

  num? get discount => _discount;

  String? get paymentDate => _paymentDate;

  num? get totalPrice => _totalPrice;

  String? get orderRef => _orderRef;

  String? get paymentMethod => _paymentMethod;

  num? get deliveryPrice => _deliveryPrice;

  num? get orderId => _orderId;

  num? get paymentStatus => _paymentStatus;

  String? get orderDate => _orderDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Discount'] = _discount;
    map['PaymentDate'] = _paymentDate;
    map['TotalPrice'] = _totalPrice;
    map['OrderRef'] = _orderRef;
    map['PaymentMethod'] = _paymentMethod;
    map['DeliveryPrice'] = _deliveryPrice;
    map['OrderId'] = _orderId;
    map['PaymentStatus'] = _paymentStatus;
    map['OrderDate'] = _orderDate;
    return map;
  }
}
