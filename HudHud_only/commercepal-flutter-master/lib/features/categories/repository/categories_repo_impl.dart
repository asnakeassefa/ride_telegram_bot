import 'package:commercepal/app/data/network/api_provider.dart';
import 'package:commercepal/app/data/network/end_points.dart';
import 'package:commercepal/core/session/data/session_repo_impl.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/prefs_data.dart';
import '../../../core/session/domain/session_repo.dart';
import '../dto/categories_dto.dart';
import '../dto/parent_categories_dto.dart';
import '../../../core/models/category_model.dart';
import '../models/parent_categories_model.dart';
import 'categories_repo.dart';

@Injectable(as: CategoriesRepo)
class CategoriesRepoImpl implements CategoriesRepo {
  final ApiProvider apiProvider;
  final SessionRepo sessionRepo;

  CategoriesRepoImpl(this.sessionRepo, this.apiProvider);

  @override
  Future<List<ParentCategoryModel>> getParentCategories() async {
    try {
      final response = await apiProvider.get(EndPoints.parentCategories.url);
      if (response['statusCode'] == "000") {
        final pCategoriesObject = ParentCategoriesDto.fromJson(response);
        if (pCategoriesObject.details?.isEmpty == true) {
          throw 'Parent categories not found';
        }
        return pCategoriesObject.details!
            .map((e) => e.toParentCategoryModel())
            .toList();
      } else {
        throw response['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CategoryModel>> fetchCategories(num parentId) async {
    try {
      final response = await apiProvider
          .get("${EndPoints.categories.url}?parentCat=$parentId");
      if (response['statusCode'] == "000") {
        final categories = CategoriesDto.fromJson(response);
        if (categories.details?.isEmpty == true) {
          throw 'Categories not found';
        }
        return categories.details!.map((e) => e.toCategoryModel()).toList();
      } else {
        throw response['statusMessage'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
