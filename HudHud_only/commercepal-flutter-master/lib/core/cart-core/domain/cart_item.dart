import 'package:floor/floor.dart';

@entity
class CartItem {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String? name;
  final String? image;
  final String? description;
  final String? currency;
  String? price;
  int? quantity;
  final int? productId;
  int? subProductId;
  final int? merchantId;

  CartItem(
      {this.id,
      this.name,
      this.image,
      this.description,
      this.currency,
      this.price,
      this.quantity,
      this.productId,
      this.subProductId, this.merchantId});

  CartItem copyWith({
    @PrimaryKey(autoGenerate: true) final int? id,
    final String? name,
    final String? image,
    final String? description,
    final String? currency,
    String? price,
    int? quantity,
    final int? productId,
    int? subProductId,
    int? merchantId
  }) {
    return CartItem(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      description: description ?? this.description,
      currency: currency ?? this.currency,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      productId: productId ?? this.productId,
      subProductId: subProductId ?? this.subProductId,
      merchantId: merchantId ?? this.merchantId
    );
  }
}
