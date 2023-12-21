import 'dart:convert';

OrderStatusDto orderStatusDtoFromJson(String str) =>
    OrderStatusDto.fromJson(json.decode(str));

String orderStatusDtoToJson(OrderStatusDto data) => json.encode(data.toJson());

class OrderStatusDto {
  OrderStatusDto({
    String? statusDescription,
    OrderTrackingData? data,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _data = data;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  OrderStatusDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    _data = json['data'] != null ? OrderTrackingData.fromJson(json['data']) : null;
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  OrderTrackingData? _data;
  String? _statusMessage;
  String? _statusCode;

  OrderStatusDto copyWith({
    String? statusDescription,
    OrderTrackingData? data,
    String? statusMessage,
    String? statusCode,
  }) =>
      OrderStatusDto(
        statusDescription: statusDescription ?? _statusDescription,
        data: data ?? _data,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  OrderTrackingData? get data => _data;

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

OrderTrackingData dataFromJson(String str) => OrderTrackingData.fromJson(json.decode(str));

String dataToJson(OrderTrackingData data) => json.encode(data.toJson());

class OrderTrackingData {
  OrderTrackingData({
    num? discount,
    String? paymentDate,
    num? totalPrice,
    String? orderRef,
    String? paymentMethod,
    num? deliveryPrice,
    List<OrderItems>? orderItems,
    num? paymentStatus,
    String? orderDate,
  }) {
    _discount = discount;
    _paymentDate = paymentDate;
    _totalPrice = totalPrice;
    _orderRef = orderRef;
    _paymentMethod = paymentMethod;
    _deliveryPrice = deliveryPrice;
    _orderItems = orderItems;
    _paymentStatus = paymentStatus;
    _orderDate = orderDate;
  }

  OrderTrackingData.fromJson(dynamic json) {
    _discount = json['Discount'];
    _paymentDate = json['PaymentDate'];
    _totalPrice = json['TotalPrice'];
    _orderRef = json['OrderRef'];
    _paymentMethod = json['PaymentMethod'];
    _deliveryPrice = json['DeliveryPrice'];
    if (json['orderItems'] != null) {
      _orderItems = [];
      json['orderItems'].forEach((v) {
        _orderItems?.add(OrderItems.fromJson(v));
      });
    }
    _paymentStatus = json['PaymentStatus'];
    _orderDate = json['OrderDate'];
  }

  num? _discount;
  String? _paymentDate;
  num? _totalPrice;
  String? _orderRef;
  String? _paymentMethod;
  num? _deliveryPrice;
  List<OrderItems>? _orderItems;
  num? _paymentStatus;
  String? _orderDate;

  OrderTrackingData copyWith({
    num? discount,
    String? paymentDate,
    num? totalPrice,
    String? orderRef,
    String? paymentMethod,
    num? deliveryPrice,
    List<OrderItems>? orderItems,
    num? paymentStatus,
    String? orderDate,
  }) =>
      OrderTrackingData(
        discount: discount ?? _discount,
        paymentDate: paymentDate ?? _paymentDate,
        totalPrice: totalPrice ?? _totalPrice,
        orderRef: orderRef ?? _orderRef,
        paymentMethod: paymentMethod ?? _paymentMethod,
        deliveryPrice: deliveryPrice ?? _deliveryPrice,
        orderItems: orderItems ?? _orderItems,
        paymentStatus: paymentStatus ?? _paymentStatus,
        orderDate: orderDate ?? _orderDate,
      );

  num? get discount => _discount;

  String? get paymentDate => _paymentDate;

  num? get totalPrice => _totalPrice;

  String? get orderRef => _orderRef;

  String? get paymentMethod => _paymentMethod;

  num? get deliveryPrice => _deliveryPrice;

  List<OrderItems>? get orderItems => _orderItems;

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
    if (_orderItems != null) {
      map['orderItems'] = _orderItems?.map((v) => v.toJson()).toList();
    }
    map['PaymentStatus'] = _paymentStatus;
    map['OrderDate'] = _orderDate;
    return map;
  }
}

OrderItems orderItemsFromJson(String str) =>
    OrderItems.fromJson(json.decode(str));

String orderItemsToJson(OrderItems data) => json.encode(data.toJson());

class OrderItems {
  OrderItems({
    String? shipmentStatusWord,
    List<ShipmentStatusList>? shipmentStatusList,
    Product? product,
    num? productId,
    num? totalAmount,
    num? orderId,
    num? itemId,
    String? qrCodeNumber,
    num? unitPrice,
    num? shipmentStatus,
    num? subProductId,
    String? createdDate,
    String? subOrderNumber,
  }) {
    _shipmentStatusWord = shipmentStatusWord;
    _shipmentStatusList = shipmentStatusList;
    _product = product;
    _productId = productId;
    _totalAmount = totalAmount;
    _orderId = orderId;
    _itemId = itemId;
    _qrCodeNumber = qrCodeNumber;
    _unitPrice = unitPrice;
    _shipmentStatus = shipmentStatus;
    _subProductId = subProductId;
    _createdDate = createdDate;
    _subOrderNumber = subOrderNumber;
  }

  OrderItems.fromJson(dynamic json) {
    _shipmentStatusWord = json['ShipmentStatusWord'];
    if (json['ShipmentStatusList'] != null) {
      _shipmentStatusList = [];
      json['ShipmentStatusList'].forEach((v) {
        _shipmentStatusList?.add(ShipmentStatusList.fromJson(v));
      });
    }
    _product =
        json['Product'] != null ? Product.fromJson(json['Product']) : null;
    _productId = json['ProductId'];
    _totalAmount = json['TotalAmount'];
    _orderId = json['OrderId'];
    _itemId = json['ItemId'];
    _qrCodeNumber = json['QrCodeNumber'];
    _unitPrice = json['UnitPrice'];
    _shipmentStatus = json['ShipmentStatus'];
    _subProductId = json['SubProductId'];
    _createdDate = json['CreatedDate'];
    _subOrderNumber = json['SubOrderNumber'];
  }

  String? _shipmentStatusWord;
  List<ShipmentStatusList>? _shipmentStatusList;
  Product? _product;
  num? _productId;
  num? _totalAmount;
  num? _orderId;
  num? _itemId;
  String? _qrCodeNumber;
  num? _unitPrice;
  num? _shipmentStatus;
  num? _subProductId;
  String? _createdDate;
  String? _subOrderNumber;

  OrderItems copyWith({
    String? shipmentStatusWord,
    List<ShipmentStatusList>? shipmentStatusList,
    Product? product,
    num? productId,
    num? totalAmount,
    num? orderId,
    num? itemId,
    String? qrCodeNumber,
    num? unitPrice,
    num? shipmentStatus,
    num? subProductId,
    String? createdDate,
    String? subOrderNumber,
  }) =>
      OrderItems(
        shipmentStatusWord: shipmentStatusWord ?? _shipmentStatusWord,
        shipmentStatusList: shipmentStatusList ?? _shipmentStatusList,
        product: product ?? _product,
        productId: productId ?? _productId,
        totalAmount: totalAmount ?? _totalAmount,
        orderId: orderId ?? _orderId,
        itemId: itemId ?? _itemId,
        qrCodeNumber: qrCodeNumber ?? _qrCodeNumber,
        unitPrice: unitPrice ?? _unitPrice,
        shipmentStatus: shipmentStatus ?? _shipmentStatus,
        subProductId: subProductId ?? _subProductId,
        createdDate: createdDate ?? _createdDate,
        subOrderNumber: subOrderNumber ?? _subOrderNumber,
      );

  String? get shipmentStatusWord => _shipmentStatusWord;

  List<ShipmentStatusList>? get shipmentStatusList => _shipmentStatusList;

  Product? get product => _product;

  num? get productId => _productId;

  num? get totalAmount => _totalAmount;

  num? get orderId => _orderId;

  num? get itemId => _itemId;

  String? get qrCodeNumber => _qrCodeNumber;

  num? get unitPrice => _unitPrice;

  num? get shipmentStatus => _shipmentStatus;

  num? get subProductId => _subProductId;

  String? get createdDate => _createdDate;

  String? get subOrderNumber => _subOrderNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ShipmentStatusWord'] = _shipmentStatusWord;
    if (_shipmentStatusList != null) {
      map['ShipmentStatusList'] =
          _shipmentStatusList?.map((v) => v.toJson()).toList();
    }
    if (_product != null) {
      map['Product'] = _product?.toJson();
    }
    map['ProductId'] = _productId;
    map['TotalAmount'] = _totalAmount;
    map['OrderId'] = _orderId;
    map['ItemId'] = _itemId;
    map['QrCodeNumber'] = _qrCodeNumber;
    map['UnitPrice'] = _unitPrice;
    map['ShipmentStatus'] = _shipmentStatus;
    map['SubProductId'] = _subProductId;
    map['CreatedDate'] = _createdDate;
    map['SubOrderNumber'] = _subOrderNumber;
    return map;
  }
}

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    String? productName,
    String? webImage,
    String? shortDescription,
  }) {
    _productName = productName;
    _webImage = webImage;
    _shortDescription = shortDescription;
  }

  Product.fromJson(dynamic json) {
    _productName = json['ProductName'];
    _webImage = json['webImage'];
    _shortDescription = json['ShortDescription'];
  }

  String? _productName;
  String? _webImage;
  String? _shortDescription;

  Product copyWith({
    String? productName,
    String? webImage,
    String? shortDescription,
  }) =>
      Product(
        productName: productName ?? _productName,
        webImage: webImage ?? _webImage,
        shortDescription: shortDescription ?? _shortDescription,
      );

  String? get productName => _productName;

  String? get webImage => _webImage;

  String? get shortDescription => _shortDescription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ProductName'] = _productName;
    map['webImage'] = _webImage;
    map['ShortDescription'] = _shortDescription;
    return map;
  }
}

ShipmentStatusList shipmentStatusListFromJson(String str) =>
    ShipmentStatusList.fromJson(json.decode(str));

String shipmentStatusListToJson(ShipmentStatusList data) =>
    json.encode(data.toJson());

class ShipmentStatusList {
  ShipmentStatusList({
    String? shipmentStatusWord,
    num? shipmentStatus,
    String? shipmentStatusComment,
    String? shipStatusDate,
  }) {
    _shipmentStatusWord = shipmentStatusWord;
    _shipmentStatus = shipmentStatus;
    _shipmentStatusComment = shipmentStatusComment;
    _shipStatusDate = shipStatusDate;
  }

  ShipmentStatusList.fromJson(dynamic json) {
    _shipmentStatusWord = json['ShipmentStatusWord'];
    _shipmentStatus = json['ShipmentStatus'];
    _shipmentStatusComment = json['ShipmentStatusComment'];
    _shipStatusDate = json['ShipStatusDate'];
  }

  String? _shipmentStatusWord;
  num? _shipmentStatus;
  String? _shipmentStatusComment;
  String? _shipStatusDate;

  ShipmentStatusList copyWith({
    String? shipmentStatusWord,
    num? shipmentStatus,
    String? shipmentStatusComment,
    String? shipStatusDate,
  }) =>
      ShipmentStatusList(
        shipmentStatusWord: shipmentStatusWord ?? _shipmentStatusWord,
        shipmentStatus: shipmentStatus ?? _shipmentStatus,
        shipmentStatusComment: shipmentStatusComment ?? _shipmentStatusComment,
        shipStatusDate: shipStatusDate ?? _shipStatusDate,
      );

  String? get shipmentStatusWord => _shipmentStatusWord;

  num? get shipmentStatus => _shipmentStatus;

  String? get shipmentStatusComment => _shipmentStatusComment;

  String? get shipStatusDate => _shipStatusDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ShipmentStatusWord'] = _shipmentStatusWord;
    map['ShipmentStatus'] = _shipmentStatus;
    map['ShipmentStatusComment'] = _shipmentStatusComment;
    map['ShipStatusDate'] = _shipStatusDate;
    return map;
  }
}
