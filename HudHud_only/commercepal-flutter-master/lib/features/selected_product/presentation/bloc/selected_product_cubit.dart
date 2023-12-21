import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:commercepal/features/products/domain/product.dart';
import 'package:commercepal/features/selected_product/presentation/bloc/selected_product_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../data/dto/selected_product_dto.dart';
import '../../domain/selected_product_repository.dart';

@injectable
class SelectedProductCubit extends Cubit<SelectedProductState> {
  final SelectedProductRepo selectedProductRepo;
  SelectedProductDetails? _selectedProductDetails;

  SelectedProductCubit(this.selectedProductRepo)
      : super(const SelectedProductState.initial());

  void fetchProduct(num productId) async {
    try {
      emit(const SelectedProductState.loading());
      final response = await selectedProductRepo.getProductDetails(productId);

      _selectedProductDetails = response;

      // product description
      if (_selectedProductDetails?.productDescription != null ||
          _selectedProductDetails?.productDescription != '[]') {
        _selectedProductDetails?.prodDescriptions =
            _sortDescription(response.productDescription!);
      }

      // default selected options
      _selectedProductDetails?.descriptionBasedProduct =
          _selectedProductDetails?.shortDescription;
      _selectedProductDetails?.selectedSubProductImage =
          _selectedProductDetails?.mobileImage == ""
              ? _selectedProductDetails?.mobileThumbnail
              : _selectedProductDetails?.mobileImage;
      _selectedProductDetails?.priceBasedOnSubProducts =
          _selectedProductDetails?.subProducts?.first.offerPrice;
      _selectedProductDetails?.selectedSubProductId =
          _selectedProductDetails?.subProducts?.isNotEmpty == true
              ? _selectedProductDetails?.subProducts![0].subProductId
              : _selectedProductDetails?.productId;

      _setProductImage();
      _setSimilarProducts();
      _setProductFeatures();
      _setProductPriceBasedOnSubProd();
      _setDeliveryTime();

      emit(SelectedProductState.product(_selectedProductDetails!));
    } catch (e) {
      emit(SelectedProductState.error(e.toString()));
    }
  }

  _setSimilarProducts() {
    if (_selectedProductDetails!.more?.isNotEmpty == true) {
      final similarProds = _selectedProductDetails!.more
          ?.where((element) => element.template == 'similar_products');
      if (similarProds?.isNotEmpty == true) {
        _selectedProductDetails!.similarProducts = similarProds?.first.items
            ?.map((e) => Product(
                e.mobileThumbnail,
                e.name,
                null,
                null,
                null,
                e.id,
                "",
                null,
                _selectedProductDetails?.subProducts?.length ?? 0,
                null,
                null,
                _selectedProductDetails?.quantity, null))
            .toList();
      }
    }
  }

  List<String> _sortDescription(String description) {
    List<String> data = [];
    jsonDecode(description).forEach((element) {
      data.add(element['data']);
    });
    return data;
  }

  void _setProductFeatures() {
    Map<String, List<Features>> features = {};
    _selectedProductDetails!.subProducts?.forEach((e) {
      e.features?.forEach((element) {
        // set additional data
        element.mobileImage =
            e.mobileImage?.isNotEmpty == true ? e.mobileImage : e.mobileVideo;
        element.subProdId = e.subProductId;

        // group features by featureName
        List<Features>? feature = [];
        if (features.containsKey(element.featureName)) {
          feature = features[element.featureName!];
          feature?.add(element);
        } else {
          feature.add(element);
        }
        features[element.featureName!] = feature!;
      });
    });

    _selectedProductDetails!.features = features;
  }

  void _setProductImage() {
    if (_selectedProductDetails!.productImages.isEmpty == true) {
      _selectedProductDetails!.productImages = [
        _selectedProductDetails!.mobileImage ?? ''
      ];
    }
  }

  void _setProductPriceBasedOnSubProd() {
    _selectedProductDetails!.priceBasedOnSubProducts =
        _selectedProductDetails!.subProducts?.first.offerPrice;
  }

  void changeProductPrice(num subProdId) {
    final subProduct = _selectedProductDetails?.subProducts
        ?.where((element) => element.subProductId == subProdId)
        .first;

    // change price to products
    _selectedProductDetails?.priceBasedOnSubProducts = subProduct?.offerPrice;

    // change images to sub-prods
    _selectedProductDetails?.selectedSubProductImage =
        subProduct?.mobileImage == ""
            ? subProduct?.mobileThumbnail == null ||
                    subProduct?.mobileThumbnail == ''
                ? subProduct!.subProductImages![0]
                : subProduct?.mobileThumbnail
            : subProduct?.mobileImage;
    if (subProduct?.subProductImages?.isNotEmpty == true) {
      _selectedProductDetails?.productImages = subProduct!.subProductImages!;
    }

    // change name and descriptions
    _selectedProductDetails?.descriptionBasedProduct =
        subProduct!.shortDescription;

    // change price
    _selectedProductDetails?.priceBasedOnSubProducts = subProduct?.offerPrice;

    // change sub product
    _selectedProductDetails?.selectedSubProductId = subProdId;

    emit(SelectedProductState.product(_selectedProductDetails!));
  }

  void _setDeliveryTime() {
    final now = DateTime.now();
    final daysLater =DateTime(now.year, now.month, now.day+3);

    _selectedProductDetails?.deliveryDate =
        "${DateFormat("MMM dd").format(now)} - ${DateFormat("MMM dd").format(daysLater)} ";
  }
}
