import 'dart:developer';

import 'package:commercepal/core/cart-core/dao/cart_dao.dart';
import 'package:commercepal/core/cart-core/domain/cart_item.dart';
import 'package:commercepal/core/cart-core/repository/cart_repository.dart';
import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  final CartDao cartDao;

  CartRepositoryImpl(this.cartDao);

  @override
  Future addToCart(CartItem cartItem) async {
    try {
      final exist =
          await cartDao.getCartItemBySubProductId(cartItem.subProductId!);
      if (exist == null) {
        await cartDao.insert(cartItem);
      } else {
        // change item quantity
        exist.quantity = (exist.quantity! + 1);
        await cartDao.insert(exist);
      }
    } catch (e) {
      Fimber.e(e.toString());
      rethrow;
    }
  }

  @override
  Stream<List<CartItem>> listenToCartUpdates() => cartDao.listenToItemUpdates();

  @override
  Future deleteItem(CartItem cartItem) async {
    try {
      await cartDao.deleteItem(cartItem.subProductId!);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CartItem>> getCartItems() async {
    try {
      final items = await cartDao.getAllItems();
      if (items.isEmpty) {
        throw 'No items found';
      } else {
        return items;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future updateItemInCart(CartItem cartItem) async {
    await cartDao.insert(cartItem);
  }
}
