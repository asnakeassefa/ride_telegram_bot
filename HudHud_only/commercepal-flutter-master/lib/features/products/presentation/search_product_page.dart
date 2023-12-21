import 'package:commercepal/features/products/presentation/widgets/products_page_data.dart';
import 'package:flutter/material.dart';

class SearchProductPage extends StatefulWidget {
  const SearchProductPage({Key? key}) : super(key: key);

  @override
  State<SearchProductPage> createState() => _SearchProductPageState();
}

class _SearchProductPageState extends State<SearchProductPage> {
  @override
  Widget build(BuildContext context) {
    return const ProductsStatePage();
  }
}
