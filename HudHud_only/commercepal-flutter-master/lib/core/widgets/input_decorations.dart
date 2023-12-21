import 'package:flutter/material.dart';

import '../../app/utils/app_colors.dart';

InputDecoration buildInputDecoration(String hint) => InputDecoration(
    hintText: hint,
    fillColor: AppColors.fieldBorder.withOpacity(0.8),
    filled: true,
    focusedBorder: buildInputBorder(),
    errorBorder: buildInputBorder(),
    errorMaxLines: 2,
    focusedErrorBorder: buildInputBorder(),
    disabledBorder: buildInputBorder(),
    enabledBorder: buildInputBorder());

OutlineInputBorder buildInputBorder() {
  return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      borderSide: BorderSide(color: Colors.transparent, width: 0));
}
