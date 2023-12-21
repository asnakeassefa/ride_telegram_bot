import '../../../core/cart-core/domain/cart_item.dart';

class NewPricedProduct {
  final CartItem cartItem;
  final Map<String, dynamic> extraData;

  NewPricedProduct(this.cartItem, this.extraData);
}
