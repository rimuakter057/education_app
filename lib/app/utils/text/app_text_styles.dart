import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  AppTextStyle._(); // Private constructor

  ///drawer section
  static TextStyle headerTextStyle(
    BuildContext context, {
    double? textFontSize,
    Color? textColor,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    double fontSize = AppSizes.headerTextSize(context);
    fontSize = textFontSize ?? fontSize;
    Color myTextColor = textColor ?? AppColors.black;
    fontWeight = fontWeight ?? FontWeight.bold;

    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: myTextColor,
    );
  }

  /// common text style
  static TextStyle textStyleMd(BuildContext context) {
    return TextStyle(
      fontSize: AppSizes.fontSizeLg(context),
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    );
  }

  ///secondary text style
  static TextStyle secondaryTextStyle(BuildContext context) {
    return TextStyle(
      fontSize: AppSizes.fontSizeMd(context),
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
    );
  }

  ///appbar text style
  static TextStyle appbarTextStyle(BuildContext context) {
    return TextStyle(
      fontSize: AppSizes.fontSizeLg(context),
      fontWeight: FontWeight.bold,
      color: AppColors.white,
    );
  }

///small text style
  static TextStyle textStyleSm(
      BuildContext context, {
        double? textFontSize,
        Color? textColor,
        FontWeight? fontWeight,
        double? fontSize,
      }) {
    double fontSize = AppSizes.fontSizeSm(context);
    fontSize = textFontSize ?? fontSize;
    Color myTextColor = textColor ?? AppColors.black;
    fontWeight = fontWeight ?? FontWeight.bold;

    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: myTextColor,
    );
  }

}
