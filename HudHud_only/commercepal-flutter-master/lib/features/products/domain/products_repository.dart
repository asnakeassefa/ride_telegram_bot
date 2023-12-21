import 'package:commercepal/features/products/domain/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts(num? subCatId, Map? queryParams);

  Future<List<Product>> searchProduct(String? search);
}
