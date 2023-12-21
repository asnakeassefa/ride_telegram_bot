import 'package:commercepal/core/widgets/product_item_widget.dart';
import 'package:commercepal/features/selected_product/presentation/selected_product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/di/injector.dart';
import '../../../dashboard/widgets/home_error_widget.dart';
import '../../../dashboard/widgets/home_loading_widget.dart';
import '../../domain/product.dart';
import '../cubit/product_cubit.dart';
import '../cubit/product_state.dart';

class ProductsPageData extends StatefulWidget {
  final num? subCatId;
  final Map? queryParams;

  const ProductsPageData({Key? key, this.subCatId, this.queryParams})
      : super(key: key);

  @override
  State<ProductsPageData> createState() => _ProductsPageDataState();
}

class _ProductsPageDataState extends State<ProductsPageData> {
  @override
  void initState() {
    super.initState();
    context
        .read<ProductCubit>()
        .fetchProducts(widget.subCatId, widget.queryParams);
  }

  @override
  Widget build(BuildContext context) {
    return const ProductsStatePage();
  }
}

class ProductsStatePage extends StatelessWidget {
  const ProductsStatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => const SizedBox(),
            error: (String error) => HomeErrorWidget(error: error),
            loading: () => const HomeLoadingWidget(),
            products: (List<Product> products) => GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.81,
                  children: List.generate(
                      products.length,
                      (index) => ProductItemWidget(
                            product: products[index],
                            onItemClick: (Product prod) {
                              Navigator.pushNamed(
                                  context, SelectedProductPage.routeName,
                                  arguments: {"p_id": prod.id});
                            },
                          )),
                ));
      },
    );
  }
}
