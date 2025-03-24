import 'package:flutter/material.dart';

class AppSizes {

  /// drawer header section size
  static double minCircleSize(BuildContext context) => MediaQuery.of(context).size.width * 0.02;
  static double maxCircleSize(BuildContext context) => MediaQuery.of(context).size.width * 0.1;
  static double currentCircleSize(BuildContext context) => MediaQuery.of(context).size.width * 0.05;
  static double leftPosition(BuildContext context) => MediaQuery.of(context).size.width * 0.05;
  static double circleBottomPosition(BuildContext context) => MediaQuery.of(context).size.height *  0.1;
  static double textBottomPosition(BuildContext context) => MediaQuery.of(context).size.height *  0.02;
  static double drawerTextSize(BuildContext context) => MediaQuery.of(context).size.width *  0.04;
  static double drawerContainerHeight(BuildContext context) => MediaQuery.of(context).size.height *  0.25;
  static double drawerContainerWidth(BuildContext context) => MediaQuery.of(context).size.width;
  /// Define the min, max, and current circle size as dynamic values
  static double getCircleRadius(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // Minimum and maximum circle radius
    double minCircleSize = screenWidth * 0.03;
    double maxCircleSize = screenWidth * 0.1;
    // Default circle radius
    double currentCircleSize = screenWidth * 0.06;
    // Constrain circle size within min and max limits
    return currentCircleSize.clamp(minCircleSize, maxCircleSize);
  }




  /// Padding and margin size
  static double sm(BuildContext context) => MediaQuery.of(context).size.width * 0.02;
  static double md(BuildContext context) => MediaQuery.of(context).size.width * 0.04;
  static double lg(BuildContext context) => MediaQuery.of(context).size.width * 0.06;
  static double xl(BuildContext context) => MediaQuery.of(context).size.width * 0.08;

  // Icon sizes
  static double iconXs(BuildContext context) => MediaQuery.of(context).size.width * 0.03;
  static double iconSm(BuildContext context) => MediaQuery.of(context).size.width * 0.04;
  static double iconMd(BuildContext context) => MediaQuery.of(context).size.width * 0.06;
  static double iconLg(BuildContext context) => MediaQuery.of(context).size.width * 0.08;

  /// Font sizes
  static double fontSizeSm(BuildContext context) => MediaQuery.of(context).size.height * 0.018;
  static double fontSizeMd(BuildContext context) => MediaQuery.of(context).size.height * 0.022;
  static double fontSizeLg(BuildContext context) => MediaQuery.of(context).size.height * 0.025;
  static double fontSizeXl(BuildContext context) => MediaQuery.of(context).size.height * 0.03;

  // Button sizes
  static double buttonHeight(BuildContext context) => MediaQuery.of(context).size.height * 0.05;
  static double buttonRadius(BuildContext context) => MediaQuery.of(context).size.width * 0.03;
  static double buttonWidth(BuildContext context) => MediaQuery.of(context).size.width * 0.3;
  static double buttonElevation(BuildContext context) => MediaQuery.of(context).size.width * 0.02;

  // AppBar height
  static double appBarHeight(BuildContext context) => MediaQuery.of(context).size.height * 0.07;

  // Image sizes
  static double imageThumbSize(BuildContext context) => MediaQuery.of(context).size.width * 0.2;

  // Default spacing
  static double defaultSpace(BuildContext context) => MediaQuery.of(context).size.height * 0.03;
  static double spaceBtwItems(BuildContext context) => MediaQuery.of(context).size.height * 0.02;
  static double defaultBtwSections(BuildContext context) => MediaQuery.of(context).size.height * 0.04;

  // Border radius
  static double borderRadiusSm(BuildContext context) => MediaQuery.of(context).size.width * 0.015;
  static double borderRadiusMd(BuildContext context) => MediaQuery.of(context).size.width * 0.045;
  static double borderRadiusLg(BuildContext context) => MediaQuery.of(context).size.width * 0.03;

  // Divider height
  static double dividerHeight(BuildContext context) => MediaQuery.of(context).size.height * 0.001;

  // Product item dimensions
  static double productImageSize(BuildContext context) => MediaQuery.of(context).size.width * 0.3;
  static double productImageRadius(BuildContext context) => MediaQuery.of(context).size.width * 0.04;
  static double productItemHeight(BuildContext context) => MediaQuery.of(context).size.height * 0.2;

  // Input field
  static double inputFieldRadius(BuildContext context) => MediaQuery.of(context).size.width * 0.03;
  static double spaceBtwInputFields(BuildContext context) => MediaQuery.of(context).size.height * 0.025;

  // Card sizes
  static double cardRadiusLg(BuildContext context) => MediaQuery.of(context).size.width * 0.04;
  static double cardRadiusMd(BuildContext context) => MediaQuery.of(context).size.width * 0.03;
  static double cardRadiusSm(BuildContext context) => MediaQuery.of(context).size.width * 0.025;
  static double cardRadiusXs(BuildContext context) => MediaQuery.of(context).size.width * 0.015;
  static double cardElevation(BuildContext context) => MediaQuery.of(context).size.width * 0.015;

  // Image carousel height
  static double imageCarouselHeight(BuildContext context) => MediaQuery.of(context).size.height * 0.25;

  // Loading indicator size
  static double loadingIndicatorSize(BuildContext context) => MediaQuery.of(context).size.width * 0.1;

  // Grid View spacing
  static double gridViewSpacing(BuildContext context) => MediaQuery.of(context).size.width * 0.04;
}
