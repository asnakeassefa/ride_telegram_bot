import 'dart:convert';

import '../../../core/models/category_model.dart';

/// statusDescription : "success"
/// details : [{"mobileImage":"","unique_name":"mens_wear","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668087597222_123.png","name":"Mens Wear","parentCategoryId":2,"id":5,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668087596921_610.png","categoryId":5},{"mobileImage":"","unique_name":"womens_wear","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668088249377_132.png","name":"Womens Wear","parentCategoryId":2,"id":6,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668088249671_652.png","categoryId":6},{"mobileImage":"","unique_name":"mens_shoes","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1654512374547_698.png","name":"Mens Shoes","parentCategoryId":2,"id":7,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1654512374810_854.png","categoryId":7},{"mobileImage":"","unique_name":"womens_shoes","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1654513655398_297.png","name":"Womens Shoes","parentCategoryId":2,"id":8,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1654513656330_595.png","categoryId":8},{"mobileImage":"","unique_name":"men_accessories","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1654521782537_167.png","name":"Men Accessories","parentCategoryId":2,"id":9,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1654521782753_867.png","categoryId":9},{"mobileImage":"","unique_name":"women_accessories","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1654522101969_693.png","name":"Women Accessories","parentCategoryId":2,"id":10,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1654522102138_901.png","categoryId":10}]
/// statusMessage : "Request Successful"
/// statusCode : "000"

CategoriesDto categoriesDtoFromJson(String str) =>
    CategoriesDto.fromJson(json.decode(str));

String categoriesDtoToJson(CategoriesDto data) => json.encode(data.toJson());

class CategoriesDto {
  CategoriesDto({
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

  CategoriesDto.fromJson(dynamic json) {
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

  CategoriesDto copyWith({
    String? statusDescription,
    List<Details>? details,
    String? statusMessage,
    String? statusCode,
  }) =>
      CategoriesDto(
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
/// unique_name : "mens_wear"
/// webImage : ""
/// webThumbnail : "https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/category_1668087597222_123.png"
/// name : "Mens Wear"
/// parentCategoryId : 2
/// id : 5
/// mobileThumbnail : "https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/category_1668087596921_610.png"
/// categoryId : 5

Details detailsFromJson(String str) => Details.fromJson(json.decode(str));

String detailsToJson(Details data) => json.encode(data.toJson());

class Details {
  Details({
    String? mobileImage,
    String? uniqueName,
    String? webImage,
    String? webThumbnail,
    String? name,
    num? parentCategoryId,
    num? id,
    String? mobileThumbnail,
    num? categoryId,
  }) {
    _mobileImage = mobileImage;
    _uniqueName = uniqueName;
    _webImage = webImage;
    _webThumbnail = webThumbnail;
    _name = name;
    _parentCategoryId = parentCategoryId;
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
    _parentCategoryId = json['parentCategoryId'];
    _id = json['id'];
    _mobileThumbnail = json['mobileThumbnail'];
    _categoryId = json['categoryId'];
  }

  String? _mobileImage;
  String? _uniqueName;
  String? _webImage;
  String? _webThumbnail;
  String? _name;
  num? _parentCategoryId;
  num? _id;
  String? _mobileThumbnail;
  num? _categoryId;

  Details copyWith({
    String? mobileImage,
    String? uniqueName,
    String? webImage,
    String? webThumbnail,
    String? name,
    num? parentCategoryId,
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
        parentCategoryId: parentCategoryId ?? _parentCategoryId,
        id: id ?? _id,
        mobileThumbnail: mobileThumbnail ?? _mobileThumbnail,
        categoryId: categoryId ?? _categoryId,
      );

  String? get mobileImage => _mobileImage;

  String? get uniqueName => _uniqueName;

  String? get webImage => _webImage;

  String? get webThumbnail => _webThumbnail;

  String? get name => _name;

  num? get parentCategoryId => _parentCategoryId;

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
    map['parentCategoryId'] = _parentCategoryId;
    map['id'] = _id;
    map['mobileThumbnail'] = _mobileThumbnail;
    map['categoryId'] = _categoryId;
    return map;
  }

  CategoryModel toCategoryModel() => CategoryModel(
      id: id, parentId: parentCategoryId, name: name, image: mobileThumbnail);
}
