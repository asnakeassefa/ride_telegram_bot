import 'dart:convert';

import '../models/parent_categories_model.dart';

/// statusDescription : "success"
/// details : [{"mobileImage":"","unique_name":"electronics","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/parent_1654505707041_831.png","name":"Electronics","id":1,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/parent_1654505707072_358.png"},{"mobileImage":"","unique_name":"fashion","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/parent_1654506002022_416.png","name":"Fashion","id":2,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/parent_1654506002069_297.png"},{"mobileImage":"","unique_name":"furniture","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/parent_1654506247075_537.png","name":"Furniture","id":3,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/parent_1654506246990_388.png"},{"mobileImage":"","unique_name":"baby_kids_and_toys","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/parent_1654505799681_992.png","name":"Baby Kids and Toys","id":4,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/parent_1654505807508_327.png"},{"mobileImage":"","unique_name":"vehicle_and_accessories","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/parent_1667307333291_290.png","name":"Vehicle and Accessories","id":5,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/parent_1667307332869_231.png"},{"mobileImage":"","unique_name":"other_category","webImage":"","webThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/parent_1654506691166_817.png","name":"Other Category","id":6,"mobileThumbnail":"https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/parent_1654506691635_746.png"}]
/// statusMessage : "Request Successful"
/// statusCode : "000"

ParentCategoriesDto parentCategoriesDtoFromJson(String str) =>
    ParentCategoriesDto.fromJson(json.decode(str));

String parentCategoriesDtoToJson(ParentCategoriesDto data) =>
    json.encode(data.toJson());

class ParentCategoriesDto {
  ParentCategoriesDto({
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

  ParentCategoriesDto.fromJson(dynamic json) {
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

  ParentCategoriesDto copyWith({
    String? statusDescription,
    List<Details>? details,
    String? statusMessage,
    String? statusCode,
  }) =>
      ParentCategoriesDto(
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
/// unique_name : "electronics"
/// webImage : ""
/// webThumbnail : "https://commercepal.s3.af-south-1.amazonaws.com/WebThumbnail/Images/parent_1654505707041_831.png"
/// name : "Electronics"
/// id : 1
/// mobileThumbnail : "https://commercepal.s3.af-south-1.amazonaws.com/MobileThumbnail/Images/parent_1654505707072_358.png"

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
  }) {
    _mobileImage = mobileImage;
    _uniqueName = uniqueName;
    _webImage = webImage;
    _webThumbnail = webThumbnail;
    _name = name;
    _id = id;
    _mobileThumbnail = mobileThumbnail;
  }

  Details.fromJson(dynamic json) {
    _mobileImage = json['mobileImage'];
    _uniqueName = json['unique_name'];
    _webImage = json['webImage'];
    _webThumbnail = json['webThumbnail'];
    _name = json['name'];
    _id = json['id'];
    _mobileThumbnail = json['mobileThumbnail'];
  }

  String? _mobileImage;
  String? _uniqueName;
  String? _webImage;
  String? _webThumbnail;
  String? _name;
  num? _id;
  String? _mobileThumbnail;

  Details copyWith({
    String? mobileImage,
    String? uniqueName,
    String? webImage,
    String? webThumbnail,
    String? name,
    num? id,
    String? mobileThumbnail,
  }) =>
      Details(
        mobileImage: mobileImage ?? _mobileImage,
        uniqueName: uniqueName ?? _uniqueName,
        webImage: webImage ?? _webImage,
        webThumbnail: webThumbnail ?? _webThumbnail,
        name: name ?? _name,
        id: id ?? _id,
        mobileThumbnail: mobileThumbnail ?? _mobileThumbnail,
      );

  String? get mobileImage => _mobileImage;

  String? get uniqueName => _uniqueName;

  String? get webImage => _webImage;

  String? get webThumbnail => _webThumbnail;

  String? get name => _name;

  num? get id => _id;

  String? get mobileThumbnail => _mobileThumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mobileImage'] = _mobileImage;
    map['unique_name'] = _uniqueName;
    map['webImage'] = _webImage;
    map['webThumbnail'] = _webThumbnail;
    map['name'] = _name;
    map['id'] = _id;
    map['mobileThumbnail'] = _mobileThumbnail;
    return map;
  }

  ParentCategoryModel toParentCategoryModel() => ParentCategoryModel(
      image: mobileThumbnail,
      name: name,
      id: id);
}
