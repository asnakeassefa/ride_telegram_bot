import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/utils/app_colors.dart';

class SearchProductWidget extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const SearchProductWidget({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        onChanged: onChanged,
        autofocus: true,
        decoration: InputDecoration(
            hintStyle: TextStyle(
                color: AppColors.secondaryTextColor, fontSize: 12.sp),
            focusedBorder: _buildOutlineInputBorder(),
            enabledBorder: _buildOutlineInputBorder(),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hintText: "Type something eg watch"),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.fieldBorder, width: 2));
  }
}
