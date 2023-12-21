import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/utils/app_colors.dart';
import '../../../../../core/widgets/app_button.dart';

class PromptWidget extends StatelessWidget {
  final String text;
  final Function? onClick;

  const PromptWidget({Key? key, required this.text, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: const BoxDecoration(
          color: AppColors.priceBg,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(
        children: [
          Expanded(
              child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontSize: 14.sp, color: AppColors.colorPrimaryDark),
          )),
          SizedBox(
              width: 100,
              height: 30,
              child: AppButtonWidget(
                  text: "Validate",
                  onClick: () {
                    onClick?.call();
                  }))
        ],
      ),
    );
  }
}
