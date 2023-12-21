import 'dart:convert';

import '../../domain/sub_category.dart';

/// statusDescription : "success"
/// details : [{"mobileImage":"","unique_name":"smart_phones","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668090716374_360.png","name":"Smart Phones","id":1,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668090716459_503.png","categoryId":1},{"mobileImage":"","unique_name":"feature_phones","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1654509648697_139.png","name":"Feature Phones","id":2,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1654509648634_266.png","categoryId":1},{"mobileImage":"","unique_name":"tablets","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1654510530287_264.png","name":"Tablets","id":3,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1654510530287_894.png","categoryId":1},{"mobileImage":"","unique_name":"accessories","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1654511382726_449.png","name":"Accessories","id":4,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1654511382772_991.png","categoryId":1}]
/// statusMessage : "Request Successful"
/// statusCode : "000"

SubCategoryDto subCategoryDtoFromJson(String str) =>
    SubCategoryDto.fromJson(json.decode(str));

String subCategoryDtoToJson(SubCategoryDto data) => json.encode(data.toJson());

class SubCategoryDto {
  SubCategoryDto({
    String? statusDescription,
    List<Details>? details,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _details = details;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  SubCategoryDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    if (json['details'] != null) {
      _details = [];
      json['details'].forEach((v) {
        _details?.add(Details.fromJson(v));
      });
    }
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  List<Details>? _details;
  String? _statusMessage;
  String? _statusCode;

  SubCategoryDto copyWith({
    String? statusDescription,
    List<Details>? details,
    String? statusMessage,
    String? statusCode,
  }) =>
      SubCategoryDto(
        statusDescription: statusDescription ?? _statusDescription,
        details: details ?? _details,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  List<Details>? get details => _details;

  String? get statusMessage => _statusMessage;

  String? get statusCode => _statusCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statusDescription'] = _statusDescription;
    if (_details != null) {
      map['details'] = _details?.map((v) => v.toJson()).toList();
    }
    map['statusMessage'] = _statusMessage;
    map['statusCode'] = _statusCode;
    return map;
  }
}

/// mobileImage : ""
/// unique_name : "smart_phones"
/// webImage : ""
/// webThumbnail : "https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/subcategory_1668090716374_360.png"
/// name : "Smart Phones"
/// id : 1
/// mobileThumbnail : "https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/subcategory_1668090716459_503.png"
/// categoryId : 1

Details detailsFromJson(String str) => Details.fromJson(json.decode(str));

String detailsToJson(Details data) => json.encode(data.toJson());

class Details {
  Details({
    String? mobileImage,
    String? uniqueName,
    String? webImage,
    String? webThumbnail,
    String? name,
    num? id,
    String? mobileThumbnail,
    num? categoryId,
  }) {
    _mobileImage = mobileImage;
    _uniqueName = uniqueName;
    _webImage = webImage;
    _webThumbnail = webThumbnail;
    _name = name;
    _id = id;
    _mobileThumbnail = mobileThumbnail;
    _categoryId = categoryId;
  }

  Details.fromJson(dynamic json) {
    _mobileImage = json['mobileImage'];
    _uniqueName = json['unique_name'];
    _webImage = json['webImage'];
    _webThumbnail = json['webThumbnail'];
    _name = json['name'];
    _id = json['id'];
    _mobileThumbnail = json['mobileThumbnail'];
    _categoryId = json['categoryId'];
  }

  String? _mobileImage;
  String? _uniqueName;
  String? _webImage;
  String? _webThumbnail;
  String? _name;
  num? _id;
  String? _mobileThumbnail;
  num? _categoryId;

  Details copyWith({
    String? mobileImage,
    String? uniqueName,
    String? webImage,
    String? webThumbnail,
    String? name,
    num? id,
    String? mobileThumbnail,
    num? categoryId,
  }) =>
      Details(
        mobileImage: mobileImage ?? _mobileImage,
        uniqueName: uniqueName ?? _uniqueName,
        webImage: webImage ?? _webImage,
        webThumbnail: webThumbnail ?? _webThumbnail,
        name: name ?? _name,
        id: id ?? _id,
        mobileThumbnail: mobileThumbnail ?? _mobileThumbnail,
        categoryId: categoryId ?? _categoryId,
      );

  String? get mobileImage => _mobileImage;

  String? get uniqueName => _uniqueName;

  String? get webImage => _webImage;

  String? get webThumbnail => _webThumbnail;

  String? get name => _name;

  num? get id => _id;

  String? get mobileThumbnail => _mobileThumbnail;

  num? get categoryId => _categoryId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mobileImage'] = _mobileImage;
    map['unique_name'] = _uniqueName;
    map['webImage'] = _webImage;
    map['webThumbnail'] = _webThumbnail;
    map['name'] = _name;
    map['id'] = _id;
    map['mobileThumbnail'] = _mobileThumbnail;
    map['categoryId'] = _categoryId;
    return map;
  }

  SubCategory toSubCategory() =>
      SubCategory(name, mobileThumbnail, id, categoryId);
}
