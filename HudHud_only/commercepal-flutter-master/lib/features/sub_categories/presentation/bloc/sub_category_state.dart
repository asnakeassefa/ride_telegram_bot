

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/sub_category.dart';

part 'sub_category_state.freezed.dart';

@freezed
class SubCategoryState with _$SubCategoryState{
  const factory SubCategoryState.init() = SubCategoryStateInit;
  const factory SubCategoryState.error( String errorMessage ) = SubCategoryStateError;
  const factory SubCategoryState.loading() = SubCategoryStateLoading;
  const factory SubCategoryState.subCategories( List<SubCategory> subCategories ) = SubCategoryStateSubCategories;
}
