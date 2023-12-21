import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/utils/app_colors.dart';

class TopCategoryWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String? imagePng;
  final VoidCallback? onClick;

  const TopCategoryWidget(
      {Key? key,
      required this.title,
      required this.subTitle,
      this.imagePng,
      this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick?.call();
      },
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: AppColors.bg1, shape: BoxShape.circle),
            child: Image.asset(
              imagePng!,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(fontSize: 12.sp)),
          Text(subTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(fontSize: 12.sp))
        ],
      ),
    );
  }
}
