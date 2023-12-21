import 'package:commercepal/app/data/db/database.dart';
import 'package:commercepal/core/cart-core/dao/cart_dao.dart';
import 'package:commercepal/core/cart-core/domain/cart_item.dart';
import 'package:flutter_test/flutter_test.dart';

import '../db_test.dart';

void main() {
  late AppDatabase appDatabase;
  late CartDao cartDao;

  setUp(() async {
    appDatabase = await setUpTestDb();
    cartDao = appDatabase.cartDao;
  });

  tearDown(() async {
    await appDatabase.close();
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

  test("given a cart item it is added successfully", () async {
    await cartDao.insert(cartItem);

    final cItem =
        await cartDao.getCartItemBySubProductId(cartItem.subProductId!);
    expect(cItem?.name, cartItem.name);
  });

  test("given a cart item it can be deleted successfully", () async {
    // insert
    await cartDao.insert(cartItem);

    // delete
    await cartDao.deleteItem(cartItem.subProductId!);

    // try get
    final cItem =
        await cartDao.getCartItemBySubProductId(cartItem.subProductId!);
    expect(cItem, isNull);
  });

  test("nuke() clears all cart items", () async {
    // insert
    await cartDao.insert(cartItem);
    await cartDao.insert(cartItem.copyWith(subProductId: 4));

    await cartDao.nuke();

    final cItem =
    await cartDao.getCartItemBySubProductId(cartItem.subProductId!);
    expect(cItem, isNull);
  });
}
