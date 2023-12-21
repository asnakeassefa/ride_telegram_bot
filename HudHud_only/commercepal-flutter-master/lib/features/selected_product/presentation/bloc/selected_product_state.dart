

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/dto/selected_product_dto.dart';

part 'selected_product_state.freezed.dart';

@freezed
class SelectedProductState with _$SelectedProductState {
  const factory SelectedProductState.initial() = SelectedProductStateInitial;
  const factory SelectedProductState.loading() = SelectedProductStateLoading;
  const factory SelectedProductState.error(String error) = SelectedProductStateError;
  const factory SelectedProductState.product(SelectedProductDetails product) = SelectedProductStateProduct;
}
