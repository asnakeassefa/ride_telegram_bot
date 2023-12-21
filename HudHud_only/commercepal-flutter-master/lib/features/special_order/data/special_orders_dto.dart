import 'dart:convert';

SpecialOrdersDto specialOrdersDtoFromJson(String str) =>
    SpecialOrdersDto.fromJson(json.decode(str));

String specialOrdersDtoToJson(SpecialOrdersDto data) =>
    json.encode(data.toJson());

class SpecialOrdersDto {
  SpecialOrdersDto({
    String? statusDescription,
    List<SpecialOrderItem>? data,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _data = data;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  SpecialOrdersDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(SpecialOrderItem.fromJson(v));
      });
    }
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  List<SpecialOrderItem>? _data;
  String? _statusMessage;
  String? _statusCode;

  SpecialOrdersDto copyWith({
    String? statusDescription,
    List<SpecialOrderItem>? data,
    String? statusMessage,
    String? statusCode,
  }) =>
      SpecialOrdersDto(
        statusDescription: statusDescription ?? _statusDescription,
        data: data ?? _data,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  List<SpecialOrderItem>? get data => _data;

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

SpecialOrderItem dataFromJson(String str) =>
    SpecialOrderItem.fromJson(json.decode(str));

String dataToJson(SpecialOrderItem data) => json.encode(data.toJson());

class SpecialOrderItem {
  SpecialOrderItem({
    num? status,
    String? requestDate,
    String? description,
    String? productName,
    String? imageOne,
    num? id,
    String? linkToProduct,
  }) {
    _status = status;
    _requestDate = requestDate;
    _description = description;
    _productName = productName;
    _imageOne = imageOne;
    _id = id;
    _linkToProduct = linkToProduct;
  }

  SpecialOrderItem.fromJson(dynamic json) {
    _status = json['Status'];
    _requestDate = json['RequestDate'];
    _description = json['Description'];
    _productName = json['ProductName'];
    _imageOne = json['ImageOne'];
    _id = json['Id'];
    _linkToProduct = json['LinkToProduct'];
  }

  num? _status;
  String? _requestDate;
  String? _description;
  String? _productName;
  String? _imageOne;
  num? _id;
  String? _linkToProduct;

  SpecialOrderItem copyWith({
    num? status,
    String? requestDate,
    String? description,
    String? productName,
    String? imageOne,
    num? id,
    String? linkToProduct,
  }) =>
      SpecialOrderItem(
        status: status ?? _status,
        requestDate: requestDate ?? _requestDate,
        description: description ?? _description,
        productName: productName ?? _productName,
        imageOne: imageOne ?? _imageOne,
        id: id ?? _id,
        linkToProduct: linkToProduct ?? _linkToProduct,
      );

  num? get status => _status;

  String? get requestDate => _requestDate;

  String? get description => _description;

  String? get productName => _productName;

  String? get imageOne => _imageOne;

  num? get id => _id;

  String? get linkToProduct => _linkToProduct;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Status'] = _status;
    map['RequestDate'] = _requestDate;
    map['Description'] = _description;
    map['ProductName'] = _productName;
    map['ImageOne'] = _imageOne;
    map['Id'] = _id;
    map['LinkToProduct'] = _linkToProduct;
    return map;
  }
}
