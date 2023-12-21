import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/utils/app_colors.dart';


class TitleWidget extends StatelessWidget {
  final String title;
  final String? optionTitle;
  final Function? onOptionClick;

  const TitleWidget(
      {Key? key, required this.title, this.optionTitle, this.onOptionClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline2?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp),
          ),
          if (optionTitle != null) const Spacer(),
          if (optionTitle != null)
            Text(
              optionTitle!,
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  ?.copyWith(color: AppColors.colorPrimary, fontSize: 16.sp),
            ),
        ],
      ),
    );
  }
}
