import 'package:commercepal/features/products/presentation/products_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/di/injector.dart';
import '../../../../core/models/category_model.dart';
import '../../../../core/widgets/cat_category_item_widget.dart';
import '../../../dashboard/widgets/home_error_widget.dart';
import '../../../dashboard/widgets/home_loading_widget.dart';
import '../../domain/sub_category.dart';
import '../bloc/sub_category_cubit.dart';
import '../bloc/sub_category_state.dart';

class SubCategoriesDataPage extends StatelessWidget {
  final CategoryModel categoryModel;

  const SubCategoriesDataPage({Key? key, required this.categoryModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SubCategoryCubit>()..fetchSubCategories(categoryModel.id),
      child: BlocBuilder<SubCategoryCubit, SubCategoryState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => const SizedBox(),
              error: (String error) => HomeErrorWidget(error: error),
              loading: () => const HomeLoadingWidget(),
              subCategories: (List<SubCategory> subCats) => Padding(
                    padding:
                        const EdgeInsets.only(right: 10.0, left: 10, top: 20),
                    child: GridView.builder(
                        itemCount: subCats.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2 / 2.3,
                          crossAxisCount: 3,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                        ),
                        itemBuilder: (ctx, index) => GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, ProductsPage.routeName,
                                    arguments: {
                                      "title": subCats[index].name,
                                      "sub_cat_id": subCats[index].id
                                    });
                              },
                              child: CatCategoryItemWidget(
                                  title: subCats[index].name ?? "",
                                  image: subCats[index].image ?? ""),
                            )),
                  ));
        },
      ),
    );
  }
}
