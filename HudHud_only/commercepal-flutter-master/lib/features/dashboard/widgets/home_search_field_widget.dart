import 'package:commercepal/core/cart-core/cart_widget.dart';
import 'package:commercepal/features/products/presentation/products_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/utils/app_colors.dart';

class HomeSearchFieldWidget extends StatelessWidget {
  const HomeSearchFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductsPage.routeName,
            arguments: {"search": true});
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    enabled: false,
                    hintStyle: TextStyle(
                        color: AppColors.secondaryTextColor, fontSize: 14.sp),
                    focusedBorder: _buildOutlineInputBorder(),
                    disabledBorder: _buildOutlineInputBorder(),
                    enabledBorder: _buildOutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColors.iconColor,
                    ),
                    hintText: "Type something eg watch"),
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            const CartWidget()
          ],
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.fieldBorder, width: 2));
  }
}
