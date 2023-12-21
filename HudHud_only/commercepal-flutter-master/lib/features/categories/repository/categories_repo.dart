

import '../../../core/models/category_model.dart';
import '../models/parent_categories_model.dart';

abstract class CategoriesRepo {
  Future<List<ParentCategoryModel>> getParentCategories();

  Future<List<CategoryModel>> fetchCategories(num parentId);
}
