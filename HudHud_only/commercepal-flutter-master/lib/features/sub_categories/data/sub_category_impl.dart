import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/features/sub_categories/data/dto/sub_category_dto.dart';
import 'package:commercepal/features/sub_categories/domain/sub_category.dart';
import 'package:commercepal/features/sub_categories/domain/sub_category_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SubCategoryRepository)
class SubCategoryImpl implements SubCategoryRepository {
  final ApiProvider apiProvider;

  SubCategoryImpl(this.apiProvider);

  @override
  Future<List<SubCategory>> fetchSubCategories(num? categoryId) async {
    try {
      final response = await apiProvider
          .get("${EndPoints.subCategories.url}?category=$categoryId");
      if (response['statusCode'] == "000") {
        final subCats = SubCategoryDto.fromJson(response);
        if (subCats.details?.isEmpty == true) {
          throw 'Subcategories not found';
        }
        return subCats.details!.map((e) => e.toSubCategory()).toList();
      } else {
        throw response['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
