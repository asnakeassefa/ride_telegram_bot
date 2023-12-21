import 'package:commercepal/app/app.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/input_decorations.dart';
import 'widgets/special_order_form.dart';

class SpecialOrderPage extends StatelessWidget {
  static const routeName = "/special_order";

  const SpecialOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Add special order",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      backgroundColor: Colors.white,
      body: const SpecialOrderForm(),
    );
  }
}
