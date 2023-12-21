import 'package:bloc/bloc.dart';
import 'package:commercepal/features/products/presentation/cubit/product_state.dart';
import 'package:injectable/injectable.dart';

import '../../domain/products_repository.dart';
import '../../utils/debouncer.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final ProductRepository productRepository;
  final DeBouncer deBouncer = DeBouncer(milliseconds: 500);

  ProductCubit({required this.productRepository})
      : super(const ProductState.init());

  void fetchProducts(num? subCatId, Map? queryParam) async {
    try {
      emit(const ProductState.loading());
      final products = await productRepository.getProducts(subCatId, queryParam);
      emit(ProductState.products(products));
    } catch (e) {
      emit(ProductState.error(e.toString()));
    }
  }

  // TODO: cancel request with new search query
  void searchProduct(String req) async {
    if (req.isEmpty || req.length < 2) {
      emit(const ProductState.error("Enter product name to search"));
      return;
    }
    emit(const ProductState.loading());

    deBouncer.run(() async {
      try {
        final products = await productRepository.searchProduct(req);
        emit(ProductState.products(products));
      } catch (e) {
        emit(ProductState.error(e.toString()));
      }
    });
  }
}
