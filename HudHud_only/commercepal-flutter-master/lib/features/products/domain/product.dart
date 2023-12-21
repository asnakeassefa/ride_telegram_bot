import 'package:commercepal/core/cart-core/domain/cart_item.dart';

T? cast<T>(x) => x is T ? x : null;

class Product {
  final String? _image;
  final String? _name;
  final String? _currency;
  final dynamic _price;
  final num? _rating;
  final num? _id;
  final String? description;
  final num? _subProdId;
  final num? subProducts;
  final dynamic _isDiscounted;
  final dynamic _offerPrice;
  final num? _quantity;
  final num? _merchantId;

  Product(
      this._image,
      this._name,
      this._currency,
      this._price,
      this._rating,
      this._id,
      this.description,
      this._subProdId,
      this.subProducts,
      this._isDiscounted,
      this._offerPrice,
      this._quantity,
      this._merchantId);

  num? get id => _id;

  num? get subId => _subProdId;

  num? get rating => _rating;

  dynamic get price => _price;

  String? get currency => _currency;

  String? get name => _name;

  String? get image => _image;

  dynamic get isDiscounted => _isDiscounted;

  dynamic get offerPrice => _offerPrice;

  num? get quantity => _quantity;

  num? get merchantId => _merchantId;

  CartItem toCartItem() => CartItem(
      name: name,
      image: image,
      description: description,
      currency: currency,
      price: "${offerPrice ?? price}",
      quantity: 1,
      productId: id?.toInt(),
      subProductId: subId?.toInt(),
      merchantId: merchantId?.toInt());
}
