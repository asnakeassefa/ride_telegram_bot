import 'package:commercepal/features/sub_categories/domain/sub_category.dart';

abstract class SubCategoryRepository {
  Future<List<SubCategory>> fetchSubCategories(num? categoryId);
}
