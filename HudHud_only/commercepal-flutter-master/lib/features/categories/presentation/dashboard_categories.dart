import 'package:commercepal/app/utils/app_colors.dart';
import 'package:commercepal/features/dashboard/widgets/home_error_widget.dart';
import 'package:commercepal/features/dashboard/widgets/home_loading_widget.dart';
import 'package:commercepal/features/sub_categories/presentation/sub_categories_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/di/injector.dart';
import '../../dashboard/widgets/home_search_field_widget.dart';
import '../../../core/models/category_model.dart';
import '../models/parent_categories_model.dart';
import 'bloc/categories_cubit.dart';
import 'bloc/categories_state.dart';
import '../../../core/widgets/cat_category_item_widget.dart';
import 'widgets/side_parent_category_widget.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoriesCubit>()..fetchParentCategories(),
      child: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (ctx, state) {
          return state.maybeWhen(
              loading: () => const HomeLoadingWidget(),
              error: (String error) => HomeErrorWidget(error: error),
              parentCategories: (List<ParentCategoryModel> pCategories) =>
                  DashboardCategoriesHomePageData(pCategories: pCategories),
              orElse: () => const SizedBox());
        },
      ),
    );
  }
}

class DashboardCategoriesHomePageData extends StatelessWidget {
  final List<ParentCategoryModel> pCategories;

  const DashboardCategoriesHomePageData({Key? key, required this.pCategories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return BlocProvider(
      create: (ctx) => getIt<CategoriesCubit>()
        ..fetchCategories(pCategories.first.id, pCategories.first.name),
      child: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (ctx, state) {
          return Column(
            children: [
              const HomeSearchFieldWidget(),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 110,
                      height:
                          (mediaQuery.size.height - mediaQuery.padding.bottom),
                      color: AppColors.bg1,
                      child: ListView.builder(
                          itemCount: pCategories.length,
                          itemBuilder: (ctx, index) => GestureDetector(
                                onTap: () {
                                  ctx.read<CategoriesCubit>().fetchCategories(
                                      pCategories[index].id,
                                      pCategories[index].name);
                                },
                                child: SideParentCategoryItemWidget(
                                  name: pCategories[index].name ?? "",
                                  image: pCategories[index].image ?? "",
                                ),
                              )),
                    ),
                    state.maybeWhen(
                        orElse: () => const SizedBox(),
                        loading: () => const Padding(
                            padding: EdgeInsets.all(10),
                            child: HomeLoadingWidget()),
                        error: (String error) =>
                            Expanded(child: HomeErrorWidget(error: error)),
                        categories: (List<CategoryModel> cats, String pName) =>
                            Expanded(
                              child: SizedBox(
                                height: (mediaQuery.size.height -
                                    mediaQuery.padding.bottom),
                                child: GridView.builder(
                                    itemCount: cats.length,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            crossAxisSpacing: 15,
                                            mainAxisSpacing: 15,
                                            childAspectRatio: 0.8),
                                    itemBuilder: (ctx, index) =>
                                        GestureDetector(
                                          onTap: () {
                                            final category = cats[index];
                                            category.pCategoryName = pName;

                                            Navigator.pushNamed(context,
                                                SubCategoriesPage.routeName,
                                                arguments: category);
                                          },
                                          child: CatCategoryItemWidget(
                                              title: cats[index].name ?? "",
                                              image: cats[index].image ?? ""),
                                        )),
                              ),
                            )),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
