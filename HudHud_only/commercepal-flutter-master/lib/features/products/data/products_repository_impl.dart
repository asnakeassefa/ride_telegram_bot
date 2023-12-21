import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/features/products/data/dto/Products_dto.dart';
import 'package:commercepal/features/products/domain/product.dart';
import 'package:injectable/injectable.dart';

import '../../../core/session/domain/session_repo.dart';
import '../domain/products_repository.dart';

@Injectable(as: ProductRepository)
class ProductsRepositoryImpl implements ProductRepository {
  final ApiProvider apiProvider;
  final SessionRepo sessionRepo;

  ProductsRepositoryImpl(this.sessionRepo, this.apiProvider);

  @override
  Future<List<Product>> getProducts(num? subCatId, Map? queryParams) async {
    try {
      String? queryString;
      queryParams?.forEach((key, value) {
        // check if there is a value
        if (queryString != null) {
          queryString = "&&$key=$value";
        } else {
          // first value
          queryString = "$key=$value";
        }
      });
      final isUserBusiness = await sessionRepo.hasUserSwitchedToBusiness();

      final products = await apiProvider.get(
          "${isUserBusiness ? EndPoints.businessProducts.url : EndPoints.products.url}?${queryString ?? 'subCat=$subCatId'}");
      if (products["statusCode"] == "000") {
        final prodObjs = ProductsDto.fromJson(products);
        if (prodObjs.details?.isEmpty == true) {
          throw 'No products found';
        }
        return prodObjs.details!
            .where((element) => element.quantity != 0)
            .map((e) => e.toProduct())
            .toList();
      } else {
        if (products['statusCode'] == '004') {
          throw 'No products found';
        }
        throw products['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Product>> searchProduct(String? search) async {
    try {
      final isUserBusiness = await sessionRepo.hasUserSwitchedToBusiness();

      final products = await apiProvider.get(
          "${isUserBusiness ? EndPoints.businessSearchProducts.url : EndPoints.searchProduct.url}?reqName=$search");
      if (products["statusCode"] == "000") {
        final prodObjs = ProductsDto.fromJson(products);
        if (prodObjs.details?.isEmpty == true) {
          throw 'No products found by that name';
        }
        return prodObjs.details!.map((e) {
          return e.toProduct();
        }).toList();
      } else {
        if (products['statusCode'] == '004') {
          throw 'No products found by that name';
        }
        throw products['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
