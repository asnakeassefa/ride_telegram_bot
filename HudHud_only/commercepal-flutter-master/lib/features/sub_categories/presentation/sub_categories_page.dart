import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/models/category_model.dart';
import '../../../core/widgets/commercepal_app_bar.dart';
import 'widgets/sub_category_data_page.dart';

class SubCategoriesPage extends StatelessWidget {
  static const routeName = "/sub-categories";

  const SubCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CategoryModel categoryModel =
        ModalRoute.of(context)?.settings.arguments as CategoryModel;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildCommerceAppBar(
        context,
        categoryModel.pCategoryName,
        categoryModel.name,
      ),
      body: SubCategoriesDataPage(categoryModel: categoryModel),
    );
  }
}
