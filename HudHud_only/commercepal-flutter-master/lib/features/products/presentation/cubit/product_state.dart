import 'package:commercepal/features/products/domain/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState{
  const factory ProductState.init() = ProductStateInit;
  const factory ProductState.error( String errorMessage ) = ProductStateError;
  const factory ProductState.loading() = ProductStateLoading;
  const factory ProductState.products( List<Product> product ) = ProductStateData;
}
