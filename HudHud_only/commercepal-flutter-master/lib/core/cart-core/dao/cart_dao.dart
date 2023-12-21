import 'package:commercepal/core/cart-core/domain/cart_item.dart';
import 'package:floor/floor.dart';

@dao
abstract class CartDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insert(CartItem cartItem);

  @Query("SELECT * FROM CartItem")
  Stream<List<CartItem>> listenToItemUpdates();

  @Query("SELECT * FROM CartItem")
  Future<List<CartItem>> getAllItems();

  @Query("SELECT * FROM CartItem WHERE productId = :productId")
  Future<CartItem?> getCartItem(int productId);

  @Query("SELECT * FROM CartItem WHERE subProductId = :subProductId")
  Future<CartItem?> getCartItemBySubProductId(int subProductId);

  @Query("DELETE FROM CartItem WHERE subProductId = :subProductId")
  Future<void> deleteItem(int subProductId);

  @Query("DELETE FROM CartItem")
  Future<void> nuke();
}
