import 'package:commercepal/core/cart-core/domain/cart_item.dart';

abstract class CartRepository {
  Future addToCart(CartItem cartItem);
  Future updateItemInCart(CartItem cartItem);

  Stream<List<CartItem>> listenToCartUpdates();
  Future<List<CartItem>> getCartItems();

  Future deleteItem(CartItem cartItem);
}
