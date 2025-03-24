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
  static TextStyle commonTextStyle(BuildContext context) {
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



  static TextStyle title(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = (screenWidth * 0.05).clamp(18.0, 24.0);

    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    );
  }

  static TextStyle body(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = (screenWidth * 0.045).clamp(16.0, 20.0);

    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: Colors.black54,
    );
  }

  static TextStyle caption(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = (screenWidth * 0.035).clamp(12.0, 16.0);

    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: Colors.grey[600],
    );
  }

  static TextStyle buttonText(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = (screenWidth * 0.045).clamp(14.0, 18.0);

    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    );
  }
}
