

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/category_model.dart';
import '../../models/parent_categories_model.dart';

part 'categories_state.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.init() = CategoriesStateInitState;
  const factory CategoriesState.loading() = CategoriesStateLoadingState;
  const factory CategoriesState.parentCategories(List<ParentCategoryModel> pCategories) = CategoriesStateParentCategoriesState;
  const factory CategoriesState.categories(List<CategoryModel> pCategories, String pName) = CategoriesStateCategoriesState;
  const factory CategoriesState.error(String message) = CategoriesStateErrorState;
}
