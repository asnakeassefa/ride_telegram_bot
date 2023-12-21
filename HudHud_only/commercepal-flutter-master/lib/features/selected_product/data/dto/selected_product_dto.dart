import 'dart:convert';

import 'package:commercepal/core/cart-core/domain/cart_item.dart';
import 'package:commercepal/features/products/domain/product.dart';

SelectedProductDto selectedProductDtoFromJson(String str) =>
    SelectedProductDto.fromJson(json.decode(str));

String selectedProductDtoToJson(SelectedProductDto data) =>
    json.encode(data.toJson());

class SelectedProductDto {
  SelectedProductDto({
    String? statusDescription,
    List<SelectedProductDetails>? details,
    String? statusMessage,
    String? statusCode,
  }) {
    _statusDescription = statusDescription;
    _details = details;
    _statusMessage = statusMessage;
    _statusCode = statusCode;
  }

  SelectedProductDto.fromJson(dynamic json) {
    _statusDescription = json['statusDescription'];
    if (json['details'] != null) {
      _details = [];
      json['details'].forEach((v) {
        _details?.add(SelectedProductDetails.fromJson(v));
      });
    }
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
  }

  String? _statusDescription;
  List<SelectedProductDetails>? _details;
  String? _statusMessage;
  String? _statusCode;

  SelectedProductDto copyWith({
    String? statusDescription,
    List<SelectedProductDetails>? details,
    String? statusMessage,
    String? statusCode,
  }) =>
      SelectedProductDto(
        statusDescription: statusDescription ?? _statusDescription,
        details: details ?? _details,
        statusMessage: statusMessage ?? _statusMessage,
        statusCode: statusCode ?? _statusCode,
      );

  String? get statusDescription => _statusDescription;

  List<SelectedProductDetails>? get details => _details;

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

SelectedProductDetails detailsFromJson(String str) =>
    SelectedProductDetails.fromJson(json.decode(str));

String detailsToJson(SelectedProductDetails data) => json.encode(data.toJson());

class SelectedProductDetails {
  SelectedProductDetails({
    String? specialInstruction,
    List<SubProducts>? subProducts,
    num? offerPrice,
    num? actualPrice,
    String? productSubCategoryIdName,
    num? productId,
    String? productName,
    num? minOrder,
    String? shortDescription,
    String? manufacturer,
    String? mobileVideo,
    String? webImage,
    String? webThumbnail,
    List<Reviews>? reviews,
    String? productParentCategoryIdName,
    String? discountType,
    String? currency,
    num? productRating,
    String? productType,
    List<FeatureDetails>? featureDetails,
    String? mobileImage,
    String? uniqueId,
    num? quantity,
    num? productParentCategoryId,
    String? unitOfMeasure,
    List<More>? more,
    num? productSubCategoryId,
    num? ratingCount,
    String? webVideo,
    num? discountAmount,
    num? moqValue,
    num? primarySubProduct,
    num? unitPrice,
    List<String>? productImages,
    String? productCategoryIdName,
    num? productCategoryId,
    num? maxOrder,
    String? mobileThumbnail,
    String? productDescription,
    num? isDiscounted,
    num? discountValue,
    String? discountDescription,
  }) {
    _specialInstruction = specialInstruction;
    _subProducts = subProducts;
    _offerPrice = offerPrice;
    _actualPrice = actualPrice;
    _productSubCategoryIdName = productSubCategoryIdName;
    _productId = productId;
    _productName = productName;
    _minOrder = minOrder;
    _shortDescription = shortDescription;
    _manufacturer = manufacturer;
    _mobileVideo = mobileVideo;
    _webImage = webImage;
    _webThumbnail = webThumbnail;
    _reviews = reviews;
    _productParentCategoryIdName = productParentCategoryIdName;
    _discountType = discountType;
    _currency = currency;
    _productRating = productRating;
    _productType = productType;
    _featureDetails = featureDetails;
    _mobileImage = mobileImage;
    _uniqueId = uniqueId;
    _quantity = quantity;
    _productParentCategoryId = productParentCategoryId;
    _unitOfMeasure = unitOfMeasure;
    _more = more;
    _productSubCategoryId = productSubCategoryId;
    _ratingCount = ratingCount;
    _webVideo = webVideo;
    _discountAmount = discountAmount;
    _moqValue = moqValue;
    _primarySubProduct = primarySubProduct;
    _unitPrice = unitPrice;
    _productImages = productImages;
    _productCategoryIdName = productCategoryIdName;
    _discountType = discountType;
    _productCategoryId = productCategoryId;
    _maxOrder = maxOrder;
    _mobileThumbnail = mobileThumbnail;
    _productDescription = productDescription;
    _isDiscounted = isDiscounted;
    _discountValue = discountValue;
    _discountDescription = discountDescription;
  }

  SelectedProductDetails.fromJson(dynamic json) {
    _specialInstruction = json['SpecialInstruction'];
    if (json['subProducts'] != null) {
      _subProducts = [];
      json['subProducts'].forEach((v) {
        _subProducts?.add(SubProducts.fromJson(v));
      });
    }
    _offerPrice = json['offerPrice'];
    _actualPrice = json['actualPrice'];
    _productSubCategoryIdName = json['ProductSubCategoryIdName'];
    _productId = json['ProductId'];
    _productName = json['productName'];
    _minOrder = json['minOrder'];
    _shortDescription = json['ShortDescription'];
    _manufacturer = json['manufacturer'];
    _mobileVideo = json['mobileVideo'];
    _webImage = json['webImage'];
    _webThumbnail = json['webThumbnail'];
    if (json['reviews'] != null) {
      _reviews = [];
      json['reviews'].forEach((v) {
        _reviews?.add(Reviews.fromJson(v));
      });
    }
    _productParentCategoryIdName = json['ProductParentCategoryIdName'];
    _discountType = json['discountType'];
    _currency = json['currency'];
    _productRating = json['productRating'];
    _productType = json['productType'];
    if (json['featureDetails'] != null) {
      _featureDetails = [];
      json['featureDetails'].forEach((v) {
        _featureDetails?.add(FeatureDetails.fromJson(v));
      });
    }
    _mobileImage = json['mobileImage'];
    _uniqueId = json['unique_id'];
    _quantity = json['quantity'];
    _productParentCategoryId = json['ProductParentCategoryId'];
    _unitOfMeasure = json['unitOfMeasure'];
    if (json['more'] != null) {
      _more = [];
      json['more'].forEach((v) {
        _more?.add(More.fromJson(v));
      });
    }
    _productSubCategoryId = json['ProductSubCategoryId'];
    _ratingCount = json['ratingCount'];
    _webVideo = json['webVideo'];
    _discountAmount = json['DiscountAmount'];
    _moqValue = json['moq_value'];
    _primarySubProduct = json['PrimarySubProduct'];
    _unitPrice = json['UnitPrice'];
    _productImages = json['ProductImages'] != null
        ? json['ProductImages'].cast<String>()
        : [];
    _productCategoryIdName = json['ProductCategoryIdName'];
    _discountType = json['DiscountType'];
    _productCategoryId = json['ProductCategoryId'];
    _maxOrder = json['maxOrder'];
    _mobileThumbnail = json['mobileThumbnail'];
    _productDescription = json['ProductDescription'];
    _isDiscounted = json['IsDiscounted'];
    _discountValue = json['DiscountValue'];
    _discountDescription = json['discountDescription'];
  }

  String? _specialInstruction;
  List<SubProducts>? _subProducts;
  num? _offerPrice;
  num? _actualPrice;
  String? _productSubCategoryIdName;
  num? _productId;
  String? _productName;
  num? _minOrder;
  String? _shortDescription;
  String? _manufacturer;
  String? _mobileVideo;
  String? _webImage;
  String? _webThumbnail;
  List<Reviews>? _reviews;
  String? _productParentCategoryIdName;
  String? _discountType;
  String? _currency;
  num? _productRating;
  String? _productType;
  List<FeatureDetails>? _featureDetails;
  String? _mobileImage;
  String? _uniqueId;
  num? _quantity;
  num? _productParentCategoryId;
  String? _unitOfMeasure;
  List<More>? _more;
  num? _productSubCategoryId;
  num? _ratingCount;
  String? _webVideo;
  num? _discountAmount;
  num? _moqValue;
  num? _primarySubProduct;
  num? _unitPrice;
  List<String>? _productImages;
  String? _productCategoryIdName;
  num? _productCategoryId;
  num? _maxOrder;
  String? _mobileThumbnail;
  String? _productDescription;
  num? _isDiscounted;
  num? _discountValue;
  String? _discountDescription;
  List<String> prodDescriptions = [];

  // Added manually for proper rendering
  List<Product>? similarProducts;
  Map<String, List<Features>> features = {};
  num? priceBasedOnSubProducts;
  num? selectedSubProductId;
  String? descriptionBasedProduct;
  String? selectedSubProductImage;
  String? deliveryDate;

  SelectedProductDetails copyWith({
    String? specialInstruction,
    List<SubProducts>? subProducts,
    num? offerPrice,
    num? actualPrice,
    String? productSubCategoryIdName,
    num? productId,
    String? productName,
    num? minOrder,
    String? shortDescription,
    String? manufacturer,
    String? mobileVideo,
    String? webImage,
    String? webThumbnail,
    List<Reviews>? reviews,
    String? productParentCategoryIdName,
    String? discountType,
    String? currency,
    num? productRating,
    String? productType,
    List<FeatureDetails>? featureDetails,
    String? mobileImage,
    String? uniqueId,
    num? quantity,
    num? productParentCategoryId,
    String? unitOfMeasure,
    List<More>? more,
    num? productSubCategoryId,
    num? ratingCount,
    String? webVideo,
    num? discountAmount,
    num? moqValue,
    num? primarySubProduct,
    num? unitPrice,
    List<String>? productImages,
    String? productCategoryIdName,
    num? productCategoryId,
    num? maxOrder,
    String? mobileThumbnail,
    String? productDescription,
    num? isDiscounted,
    num? discountValue,
    String? discountDescription,
  }) =>
      SelectedProductDetails(
        specialInstruction: specialInstruction ?? _specialInstruction,
        subProducts: subProducts ?? _subProducts,
        offerPrice: offerPrice ?? _offerPrice,
        actualPrice: actualPrice ?? _actualPrice,
        productSubCategoryIdName:
            productSubCategoryIdName ?? _productSubCategoryIdName,
        productId: productId ?? _productId,
        productName: productName ?? _productName,
        minOrder: minOrder ?? _minOrder,
        shortDescription: shortDescription ?? _shortDescription,
        manufacturer: manufacturer ?? _manufacturer,
        mobileVideo: mobileVideo ?? _mobileVideo,
        webImage: webImage ?? _webImage,
        webThumbnail: webThumbnail ?? _webThumbnail,
        reviews: reviews ?? _reviews,
        productParentCategoryIdName:
            productParentCategoryIdName ?? _productParentCategoryIdName,
        discountType: discountType ?? _discountType,
        currency: currency ?? _currency,
        productRating: productRating ?? _productRating,
        productType: productType ?? _productType,
        featureDetails: featureDetails ?? _featureDetails,
        mobileImage: mobileImage ?? _mobileImage,
        uniqueId: uniqueId ?? _uniqueId,
        quantity: quantity ?? _quantity,
        productParentCategoryId:
            productParentCategoryId ?? _productParentCategoryId,
        unitOfMeasure: unitOfMeasure ?? _unitOfMeasure,
        more: more ?? _more,
        productSubCategoryId: productSubCategoryId ?? _productSubCategoryId,
        ratingCount: ratingCount ?? _ratingCount,
        webVideo: webVideo ?? _webVideo,
        discountAmount: discountAmount ?? _discountAmount,
        moqValue: moqValue ?? _moqValue,
        primarySubProduct: primarySubProduct ?? _primarySubProduct,
        unitPrice: unitPrice ?? _unitPrice,
        productImages: productImages ?? _productImages,
        productCategoryIdName: productCategoryIdName ?? _productCategoryIdName,
        productCategoryId: productCategoryId ?? _productCategoryId,
        maxOrder: maxOrder ?? _maxOrder,
        mobileThumbnail: mobileThumbnail ?? _mobileThumbnail,
        productDescription: productDescription ?? _productDescription,
        isDiscounted: isDiscounted ?? _isDiscounted,
        discountValue: discountValue ?? _discountValue,
        discountDescription: discountDescription ?? _discountDescription,
      );

  String? get specialInstruction => _specialInstruction;

  List<SubProducts>? get subProducts => _subProducts;

  num? get offerPrice => _offerPrice;

  num? get actualPrice => _actualPrice;

  String? get productSubCategoryIdName => _productSubCategoryIdName;

  num? get productId => _productId;

  String? get productName => _productName;

  num? get minOrder => _minOrder;

  String? get shortDescription => _shortDescription;

  String? get manufacturer => _manufacturer;

  String? get mobileVideo => _mobileVideo;

  String? get webImage => _webImage;

  String? get webThumbnail => _webThumbnail;

  List<Reviews>? get reviews => _reviews;

  String? get productParentCategoryIdName => _productParentCategoryIdName;

  String? get discountType => _discountType;

  String? get currency => _currency;

  num? get productRating => _productRating;

  String? get productType => _productType;

  List<FeatureDetails>? get featureDetails => _featureDetails;

  String? get mobileImage => _mobileImage;

  String? get uniqueId => _uniqueId;

  num? get quantity => _quantity;

  num? get productParentCategoryId => _productParentCategoryId;

  String? get unitOfMeasure => _unitOfMeasure;

  List<More>? get more => _more;

  num? get productSubCategoryId => _productSubCategoryId;

  num? get ratingCount => _ratingCount;

  String? get webVideo => _webVideo;

  num? get discountAmount => _discountAmount;

  num? get moqValue => _moqValue;

  num? get primarySubProduct => _primarySubProduct;

  num? get unitPrice => _unitPrice;

  List<String> get productImages => _productImages ?? [];

  set productImages(List<String> value) {
    _productImages = value;
  }

  String? get productCategoryIdName => _productCategoryIdName;

  num? get productCategoryId => _productCategoryId;

  num? get maxOrder => _maxOrder;

  String? get mobileThumbnail => _mobileThumbnail;

  String? get productDescription => _productDescription;

  num? get isDiscounted => _isDiscounted;

  num? get discountValue => _discountValue;

  String? get discountDescription => _discountDescription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['SpecialInstruction'] = _specialInstruction;
    if (_subProducts != null) {
      map['subProducts'] = _subProducts?.map((v) => v.toJson()).toList();
    }
    map['offerPrice'] = _offerPrice;
    map['actualPrice'] = _actualPrice;
    map['ProductSubCategoryIdName'] = _productSubCategoryIdName;
    map['ProductId'] = _productId;
    map['productName'] = _productName;
    map['minOrder'] = _minOrder;
    map['ShortDescription'] = _shortDescription;
    map['manufacturer'] = _manufacturer;
    map['mobileVideo'] = _mobileVideo;
    map['webImage'] = _webImage;
    map['webThumbnail'] = _webThumbnail;
    if (_reviews != null) {
      map['reviews'] = _reviews?.map((v) => v.toJson()).toList();
    }
    map['ProductParentCategoryIdName'] = _productParentCategoryIdName;
    map['discountType'] = _discountType;
    map['currency'] = _currency;
    map['productRating'] = _productRating;
    map['productType'] = _productType;
    if (_featureDetails != null) {
      map['featureDetails'] = _featureDetails?.map((v) => v.toJson()).toList();
    }
    map['mobileImage'] = _mobileImage;
    map['unique_id'] = _uniqueId;
    map['quantity'] = _quantity;
    map['ProductParentCategoryId'] = _productParentCategoryId;
    map['unitOfMeasure'] = _unitOfMeasure;
    if (_more != null) {
      map['more'] = _more?.map((v) => v.toJson()).toList();
    }
    map['ProductSubCategoryId'] = _productSubCategoryId;
    map['ratingCount'] = _ratingCount;
    map['webVideo'] = _webVideo;
    map['DiscountAmount'] = _discountAmount;
    map['moq_value'] = _moqValue;
    map['PrimarySubProduct'] = _primarySubProduct;
    map['UnitPrice'] = _unitPrice;
    map['ProductImages'] = _productImages;
    map['ProductCategoryIdName'] = _productCategoryIdName;
    map['DiscountType'] = _discountType;
    map['ProductCategoryId'] = _productCategoryId;
    map['maxOrder'] = _maxOrder;
    map['mobileThumbnail'] = _mobileThumbnail;
    map['ProductDescription'] = _productDescription;
    map['IsDiscounted'] = _isDiscounted;
    map['DiscountValue'] = _discountValue;
    map['discountDescription'] = _discountDescription;
    return map;
  }

  CartItem toCartItem() => CartItem(
      productId: productId?.toInt(),
      name: productName,
      description: descriptionBasedProduct,
      quantity: 1,
      currency: currency,
      price: priceBasedOnSubProducts.toString(),
      subProductId: selectedSubProductId?.toInt(),
      image: selectedSubProductImage);
}

More moreFromJson(String str) => More.fromJson(json.decode(str));

String moreToJson(More data) => json.encode(data.toJson());

class More {
  More({
    String? template,
    String? catalogueType,
    String? displayName,
    List<Items>? items,
    String? key,
  }) {
    _template = template;
    _catalogueType = catalogueType;
    _displayName = displayName;
    _items = items;
    _key = key;
  }

  More.fromJson(dynamic json) {
    _template = json['template'];
    _catalogueType = json['catalogueType'];
    _displayName = json['display_name'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
    _key = json['key'];
  }

  String? _template;
  String? _catalogueType;
  String? _displayName;
  List<Items>? _items;
  String? _key;

  More copyWith({
    String? template,
    String? catalogueType,
    String? displayName,
    List<Items>? items,
    String? key,
  }) =>
      More(
        template: template ?? _template,
        catalogueType: catalogueType ?? _catalogueType,
        displayName: displayName ?? _displayName,
        items: items ?? _items,
        key: key ?? _key,
      );

  String? get template => _template;

  String? get catalogueType => _catalogueType;

  String? get displayName => _displayName;

  List<Items>? get items => _items;

  String? get key => _key;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['template'] = _template;
    map['catalogueType'] = _catalogueType;
    map['display_name'] = _displayName;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    map['key'] = _key;
    return map;
  }
}

Items itemsFromJson(String str) => Items.fromJson(json.decode(str));

String itemsToJson(Items data) => json.encode(data.toJson());

class Items {
  Items({
    String? mobileImage,
    String? uniqueName,
    String? webImage,
    String? webThumbnail,
    String? name,
    num? id,
    String? mobileThumbnail,
    String? sectionType,
    num? categoryId,
  }) {
    _mobileImage = mobileImage;
    _uniqueName = uniqueName;
    _webImage = webImage;
    _webThumbnail = webThumbnail;
    _name = name;
    _id = id;
    _mobileThumbnail = mobileThumbnail;
    _sectionType = sectionType;
    _categoryId = categoryId;
  }

  Items.fromJson(dynamic json) {
    _mobileImage = json['mobileImage'];
    _uniqueName = json['unique_name'];
    _webImage = json['webImage'];
    _webThumbnail = json['webThumbnail'];
    _name = json['name'];
    _id = json['id'];
    _mobileThumbnail = json['mobileThumbnail'];
    _sectionType = json['sectionType'];
    _categoryId = json['categoryId'];
  }

  String? _mobileImage;
  String? _uniqueName;
  String? _webImage;
  String? _webThumbnail;
  String? _name;
  num? _id;
  String? _mobileThumbnail;
  String? _sectionType;
  num? _categoryId;

  Items copyWith({
    String? mobileImage,
    String? uniqueName,
    String? webImage,
    String? webThumbnail,
    String? name,
    num? id,
    String? mobileThumbnail,
    String? sectionType,
    num? categoryId,
  }) =>
      Items(
        mobileImage: mobileImage ?? _mobileImage,
        uniqueName: uniqueName ?? _uniqueName,
        webImage: webImage ?? _webImage,
        webThumbnail: webThumbnail ?? _webThumbnail,
        name: name ?? _name,
        id: id ?? _id,
        mobileThumbnail: mobileThumbnail ?? _mobileThumbnail,
        sectionType: sectionType ?? _sectionType,
        categoryId: categoryId ?? _categoryId,
      );

  String? get mobileImage => _mobileImage;

  String? get uniqueName => _uniqueName;

  String? get webImage => _webImage;

  String? get webThumbnail => _webThumbnail;

  String? get name => _name;

  num? get id => _id;

  String? get mobileThumbnail => _mobileThumbnail;

  String? get sectionType => _sectionType;

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
    map['sectionType'] = _sectionType;
    map['categoryId'] = _categoryId;
    return map;
  }
}

FeatureDetails featureDetailsFromJson(String str) =>
    FeatureDetails.fromJson(json.decode(str));

String featureDetailsToJson(FeatureDetails data) => json.encode(data.toJson());

class FeatureDetails {
  FeatureDetails({
    num? featureId,
    List<String>? available,
  }) {
    _featureId = featureId;
    _available = available;
  }

  FeatureDetails.fromJson(dynamic json) {
    _featureId = json['FeatureId'];
    _available =
        json['Available'] != null ? json['Available'].cast<String>() : [];
  }

  num? _featureId;
  List<String>? _available;

  FeatureDetails copyWith({
    num? featureId,
    List<String>? available,
  }) =>
      FeatureDetails(
        featureId: featureId ?? _featureId,
        available: available ?? _available,
      );

  num? get featureId => _featureId;

  List<String>? get available => _available;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['FeatureId'] = _featureId;
    map['Available'] = _available;
    return map;
  }
}

Reviews reviewsFromJson(String str) => Reviews.fromJson(json.decode(str));

String reviewsToJson(Reviews data) => json.encode(data.toJson());

class Reviews {
  Reviews({
    String? date,
    String? reviewerName,
    num? rating,
    String? reviewerProfileImageUrl,
    String? description,
    num? id,
    String? title,
  }) {
    _date = date;
    _reviewerName = reviewerName;
    _rating = rating;
    _reviewerProfileImageUrl = reviewerProfileImageUrl;
    _description = description;
    _id = id;
    _title = title;
  }

  Reviews.fromJson(dynamic json) {
    _date = json['date'];
    _reviewerName = json['reviewerName'];
    _rating = json['rating'];
    _reviewerProfileImageUrl = json['reviewerProfileImageUrl'];
    _description = json['description'];
    _id = json['id'];
    _title = json['title'];
  }

  String? _date;
  String? _reviewerName;
  num? _rating;
  String? _reviewerProfileImageUrl;
  String? _description;
  num? _id;
  String? _title;

  Reviews copyWith({
    String? date,
    String? reviewerName,
    num? rating,
    String? reviewerProfileImageUrl,
    String? description,
    num? id,
    String? title,
  }) =>
      Reviews(
        date: date ?? _date,
        reviewerName: reviewerName ?? _reviewerName,
        rating: rating ?? _rating,
        reviewerProfileImageUrl:
            reviewerProfileImageUrl ?? _reviewerProfileImageUrl,
        description: description ?? _description,
        id: id ?? _id,
        title: title ?? _title,
      );

  String? get date => _date;

  String? get reviewerName => _reviewerName;

  num? get rating => _rating;

  String? get reviewerProfileImageUrl => _reviewerProfileImageUrl;

  String? get description => _description;

  num? get id => _id;

  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['reviewerName'] = _reviewerName;
    map['rating'] = _rating;
    map['reviewerProfileImageUrl'] = _reviewerProfileImageUrl;
    map['description'] = _description;
    map['id'] = _id;
    map['title'] = _title;
    return map;
  }
}

SubProducts subProductsFromJson(String str) =>
    SubProducts.fromJson(json.decode(str));

String subProductsToJson(SubProducts data) => json.encode(data.toJson());

class SubProducts {
  SubProducts({
    String? mobileImage,
    num? offerPrice,
    List<String>? subProductImages,
    String? webVideo,
    num? discountAmount,
    String? shortDescription,
    List<Features>? features,
    num? unitPrice,
    String? mobileVideo,
    String? webImage,
    String? webThumbnail,
    num? subProductId,
    String? discountType,
    String? mobileThumbnail,
    num? isDiscounted,
    num? discountValue,
    String? discountDescription,
  }) {
    _mobileImage = mobileImage;
    _offerPrice = offerPrice;
    _subProductImages = subProductImages;
    _webVideo = webVideo;
    _discountAmount = discountAmount;
    _shortDescription = shortDescription;
    _features = features;
    _unitPrice = unitPrice;
    _mobileVideo = mobileVideo;
    _webImage = webImage;
    _webThumbnail = webThumbnail;
    _subProductId = subProductId;
    _discountType = discountType;
    _mobileThumbnail = mobileThumbnail;
    _isDiscounted = isDiscounted;
    _discountValue = discountValue;
    _discountDescription = discountDescription;
  }

  SubProducts.fromJson(dynamic json) {
    _mobileImage = json['mobileImage'];
    _offerPrice = json['offerPrice'];
    _subProductImages = json['subProductImages'] != null
        ? json['subProductImages'].cast<String>()
        : [];
    _webVideo = json['webVideo'];
    _discountAmount = json['DiscountAmount'];
    _shortDescription = json['ShortDescription'];
    if (json['features'] != null) {
      _features = [];
      json['features'].forEach((v) {
        _features?.add(Features.fromJson(v));
      });
    }
    _unitPrice = json['UnitPrice'];
    _mobileVideo = json['mobileVideo'];
    _webImage = json['webImage'];
    _webThumbnail = json['webThumbnail'];
    _subProductId = json['SubProductId'];
    _discountType = json['DiscountType'];
    _mobileThumbnail = json['mobileThumbnail'];
    _isDiscounted = json['IsDiscounted'];
    _discountValue = json['DiscountValue'];
    _discountDescription = json['discountDescription'];
  }

  String? _mobileImage;
  num? _offerPrice;
  List<String>? _subProductImages;
  String? _webVideo;
  num? _discountAmount;
  String? _shortDescription;
  List<Features>? _features;
  num? _unitPrice;
  String? _mobileVideo;
  String? _webImage;
  String? _webThumbnail;
  num? _subProductId;
  String? _discountType;
  String? _mobileThumbnail;
  num? _isDiscounted;
  num? _discountValue;
  String? _discountDescription;

  SubProducts copyWith({
    String? mobileImage,
    num? offerPrice,
    List<String>? subProductImages,
    String? webVideo,
    num? discountAmount,
    String? shortDescription,
    List<Features>? features,
    num? unitPrice,
    String? mobileVideo,
    String? webImage,
    String? webThumbnail,
    num? subProductId,
    String? discountType,
    String? mobileThumbnail,
    num? isDiscounted,
    num? discountValue,
    String? discountDescription,
  }) =>
      SubProducts(
        mobileImage: mobileImage ?? _mobileImage,
        offerPrice: offerPrice ?? _offerPrice,
        subProductImages: subProductImages ?? _subProductImages,
        webVideo: webVideo ?? _webVideo,
        discountAmount: discountAmount ?? _discountAmount,
        shortDescription: shortDescription ?? _shortDescription,
        features: features ?? _features,
        unitPrice: unitPrice ?? _unitPrice,
        mobileVideo: mobileVideo ?? _mobileVideo,
        webImage: webImage ?? _webImage,
        webThumbnail: webThumbnail ?? _webThumbnail,
        subProductId: subProductId ?? _subProductId,
        discountType: discountType ?? _discountType,
        mobileThumbnail: mobileThumbnail ?? _mobileThumbnail,
        isDiscounted: isDiscounted ?? _isDiscounted,
        discountValue: discountValue ?? _discountValue,
        discountDescription: discountDescription ?? _discountDescription,
      );

  String? get mobileImage => _mobileImage;

  num? get offerPrice => _offerPrice;

  List<String>? get subProductImages => _subProductImages;

  String? get webVideo => _webVideo;

  num? get discountAmount => _discountAmount;

  String? get shortDescription => _shortDescription;

  List<Features>? get features => _features;

  num? get unitPrice => _unitPrice;

  String? get mobileVideo => _mobileVideo;

  String? get webImage => _webImage;

  String? get webThumbnail => _webThumbnail;

  num? get subProductId => _subProductId;

  String? get discountType => _discountType;

  String? get mobileThumbnail => _mobileThumbnail;

  num? get isDiscounted => _isDiscounted;

  num? get discountValue => _discountValue;

  String? get discountDescription => _discountDescription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mobileImage'] = _mobileImage;
    map['offerPrice'] = _offerPrice;
    map['subProductImages'] = _subProductImages;
    map['webVideo'] = _webVideo;
    map['DiscountAmount'] = _discountAmount;
    map['ShortDescription'] = _shortDescription;
    if (_features != null) {
      map['features'] = _features?.map((v) => v.toJson()).toList();
    }
    map['UnitPrice'] = _unitPrice;
    map['mobileVideo'] = _mobileVideo;
    map['webImage'] = _webImage;
    map['webThumbnail'] = _webThumbnail;
    map['SubProductId'] = _subProductId;
    map['DiscountType'] = _discountType;
    map['mobileThumbnail'] = _mobileThumbnail;
    map['IsDiscounted'] = _isDiscounted;
    map['DiscountValue'] = _discountValue;
    map['discountDescription'] = _discountDescription;
    return map;
  }
}

Features featuresFromJson(String str) => Features.fromJson(json.decode(str));

String featuresToJson(Features data) => json.encode(data.toJson());

class Features {
  Features({
    String? featureValue,
    String? variableType,
    String? unitOfMeasure,
    String? valueUnitOfMeasure,
    String? featureName,
    num? valueId,
    num? featureId,
  }) {
    _featureValue = featureValue;
    _variableType = variableType;
    _unitOfMeasure = unitOfMeasure;
    _valueUnitOfMeasure = valueUnitOfMeasure;
    _featureName = featureName;
    _valueId = valueId;
    _featureId = featureId;
  }

  Features.fromJson(dynamic json) {
    _featureValue = json['featureValue'];
    _variableType = json['variableType'];
    _unitOfMeasure = json['unitOfMeasure'];
    _valueUnitOfMeasure = json['ValueUnitOfMeasure'];
    _featureName = json['featureName'];
    _valueId = json['ValueId'];
    _featureId = json['featureId'];
  }

  String? _featureValue;
  String? _variableType;
  String? _unitOfMeasure;
  String? _valueUnitOfMeasure;
  String? _featureName;
  num? _valueId;
  num? _featureId;

  // Added manually for easy parsing in ui
  String? mobileImage;
  num? subProdId;

  Features copyWith({
    String? featureValue,
    String? variableType,
    String? unitOfMeasure,
    String? valueUnitOfMeasure,
    String? featureName,
    num? valueId,
    num? featureId,
  }) =>
      Features(
        featureValue: featureValue ?? _featureValue,
        variableType: variableType ?? _variableType,
        unitOfMeasure: unitOfMeasure ?? _unitOfMeasure,
        valueUnitOfMeasure: valueUnitOfMeasure ?? _valueUnitOfMeasure,
        featureName: featureName ?? _featureName,
        valueId: valueId ?? _valueId,
        featureId: featureId ?? _featureId,
      );

  String? get featureValue => _featureValue;

  String? get variableType => _variableType;

  String? get unitOfMeasure => _unitOfMeasure;

  String? get valueUnitOfMeasure => _valueUnitOfMeasure;

  String? get featureName => _featureName;

  num? get valueId => _valueId;

  num? get featureId => _featureId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['featureValue'] = _featureValue;
    map['variableType'] = _variableType;
    map['unitOfMeasure'] = _unitOfMeasure;
    map['ValueUnitOfMeasure'] = _valueUnitOfMeasure;
    map['featureName'] = _featureName;
    map['ValueId'] = _valueId;
    map['featureId'] = _featureId;
    return map;
  }
}
