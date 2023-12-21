import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../app/utils/app_colors.dart';
import '../../app/utils/assets.dart';
import '../cart-core/cart_widget.dart';

AppBar buildCommerceAppBar(BuildContext context,
    [String? title, String? subTitle, bool displayCart = true]) =>
    AppBar(
      centerTitle: false,
      actions:   [
       if(displayCart) CartWidget()
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (subTitle != null)
            const SizedBox(
              height: 10,
            ),
          if (title != null)
            Text(
              title!,
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium,
            ),
          if (subTitle != null)
            const SizedBox(
              height: 4,
            ),
          if (subTitle != null)
            Text(subTitle,
                style: Theme
                    .of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: AppColors.secondaryTextColor)),
        ],
      ),
    );
