import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/features/selected_product/data/dto/selected_product_dto.dart';
import 'package:commercepal/features/selected_product/domain/selected_product_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../core/session/domain/session_repo.dart';

@Injectable(as: SelectedProductRepo)
class SelectedProductPageRepositoryImpl implements SelectedProductRepo {
  final SessionRepo sessionRepo;
  final ApiProvider apiProvider;

  SelectedProductPageRepositoryImpl(this.sessionRepo, this.apiProvider)
      : super();

  @override
  Future<SelectedProductDetails> getProductDetails(num prodId) async {
    try {
      final hasUserSwitchedToBusiness =
          await sessionRepo.hasUserSwitchedToBusiness();
      final response = await apiProvider.get(
          "${hasUserSwitchedToBusiness ? EndPoints.businessProducts.url : EndPoints.products.url}?product=$prodId");
      if (response['statusCode'] == "000") {
        final productObj = SelectedProductDto.fromJson(response);
        // TODO: add check if product exists, anyway this '.first' handles the exception for us
        return productObj.details!.first;
      } else {
        throw "Unable to fetch product details";
      }
    } catch (e) {
      rethrow;
    }
  }
}
