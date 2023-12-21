import 'package:commercepal/app/data/db/database.dart';
import 'package:commercepal/core/cart-core/dao/cart_dao.dart';
import 'package:commercepal/core/cart-core/domain/cart_item.dart';
import 'package:commercepal/core/cart-core/repository/cart_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';

import '../db_test.dart';

void main() {
  late AppDatabase appDatabase;
  late CartDao cartDao;
  late CartRepositoryImpl cartRepositoryImpl;

  setUp(() async {
    appDatabase = await setUpTestDb();
    cartDao = appDatabase.cartDao;

    cartRepositoryImpl = CartRepositoryImpl(cartDao);
  });

  final cartItem = CartItem(
      name: "test item",
      image: 'image url',
      description: "test desc",
      currency: 'ETB',
      price: '9000',
      quantity: 1,
      subProductId: 1,
      productId: 2);


  test("given a cart item with a prod of same id exists, deleting one does not delete the other one", () async {
      // insert
     await cartRepositoryImpl.addToCart(cartItem);
     await cartRepositoryImpl.addToCart(cartItem.copyWith(subProductId: 2));

      // delete
     await cartRepositoryImpl.deleteItem(cartItem);

     final cItem = await cartDao.getCartItemBySubProductId(cartItem.subProductId!);
     expect(cItem, isNull);

     final cItem2 = await cartDao.getCartItemBySubProductId(2);
     expect(cItem2, isNotNull);
  });

  test("Add two items of same subId will increase the quantity of sub product", () async {
    await cartRepositoryImpl.addToCart(cartItem);
    await cartRepositoryImpl.addToCart(cartItem);

    final cItem = await cartDao.getCartItemBySubProductId(cartItem.subProductId!);
    expect(cItem?.quantity, 2);
  });
}
