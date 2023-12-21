import 'package:commercepal/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static void setAndroidStatusColors() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white, // navigation bar color
        statusBarColor: Colors.white, // status bar color
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark));
  }

  static ThemeData themeData() {
    return ThemeData(
        primaryColor: AppColors.colorPrimaryDark,
        appBarTheme: appBarTheme(),
        scaffoldBackgroundColor: AppColors.bgColor,
        fontFamily: 'Sora',
        textTheme: const TextTheme(
            displayLarge: TextStyle(
                color: AppColors.primaryTextColor,
                fontSize: 24,
                fontFamily: 'Sora'),
            displayMedium: TextStyle(
                color: AppColors.primaryTextColor,
                fontSize: 20,
                fontFamily: 'Sora'),
            displaySmall: TextStyle(
                color: AppColors.primaryTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Sora'),
            bodyLarge: TextStyle(
                color: AppColors.primaryTextColor,
                fontSize: 16,
                fontFamily: 'Sora'),
            bodyMedium: TextStyle(
                color: AppColors.secondaryTextColor,
                fontSize: 14,
                fontFamily: 'Sora')),
        inputDecorationTheme: inputDecorationTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity);
  }

  static AppBarTheme appBarTheme() {
    return AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: textStyle(),
        toolbarTextStyle: textStyle(),
        systemOverlayStyle: SystemUiOverlayStyle.dark);
  }

  static TextStyle textStyle() {
    return const TextStyle(
        color: AppColors.primaryTextColor, fontSize: 14, fontFamily: 'Sora');
  }

  static InputDecorationTheme inputDecorationTheme() {
    const outlineInputBorder = OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.fieldBorder), gapPadding: 6);

    final focusedOutlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
      gapPadding: 10,
    );

    return InputDecorationTheme(
      focusColor: AppColors.colorPrimary,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      enabledBorder: outlineInputBorder,
      border: outlineInputBorder,
      labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
      hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
      focusedBorder: focusedOutlineInputBorder,
      errorBorder: outlineInputBorder,
    );
  }

  static AppBar buildAuthAppBar(
      BuildContext context, String actionText, VoidCallback onActionClicked) {
    return AppBar(
      leading: BackButton(
        color: Colors.black,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        TextButton(
          onPressed: onActionClicked,
          child: Text(
            actionText,
            style: const TextStyle(
                fontSize: 18, color: AppColors.secondaryTextColor),
          ),
        )
      ],
    );
  }
}
