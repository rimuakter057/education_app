import 'package:flutter/material.dart';

class AppSizes {
///screen size
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;


  /// drawer header section size
  static double minCircleSize(BuildContext context) => MediaQuery.of(context).size.width * 0.02;
  static double maxCircleSize(BuildContext context) => MediaQuery.of(context).size.width * 0.1;
  static double currentCircleSize(BuildContext context) => MediaQuery.of(context).size.width * 0.05;
  static double leftPosition(BuildContext context) => MediaQuery.of(context).size.width * 0.05;
  static double circleBottomPosition(BuildContext context) => MediaQuery.of(context).size.height *  0.1;
  static double textBottomPosition(BuildContext context) => MediaQuery.of(context).size.height *  0.02;
  static double headerTextSize(BuildContext context) => MediaQuery.of(context).size.width *  0.045;
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


  ///main screen body section
  static double containerHeightLg(BuildContext context) => MediaQuery.of(context).size.height *  0.22;
  static double opCoHeight(BuildContext context) => MediaQuery.of(context).size.height *  0.12;
  static double containerHeightMd(BuildContext context) => MediaQuery.of(context).size.width *  0.3;










  ///border radius
  static double borderRadiusSm(BuildContext context) => MediaQuery.of(context).size.width * 0.018;
  static double borderRadiusMd(BuildContext context) => MediaQuery.of(context).size.width * 0.045;


  /// Padding and margin size
  static double lg(BuildContext context) => MediaQuery.of(context).size.width * 0.06;

  // Icon sizes
  static double iconXs(BuildContext context) => MediaQuery.of(context).size.width * 0.03;
  static double iconSm(BuildContext context) => MediaQuery.of(context).size.width * 0.04;
  static double iconMd(BuildContext context) => MediaQuery.of(context).size.width * 0.06;
  static double iconLg(BuildContext context) => MediaQuery.of(context).size.width * 0.08;
///image
  static double imageXs(BuildContext context) => MediaQuery.of(context).size.width * 0.03;
  static double imageSm(BuildContext context) => MediaQuery.of(context).size.width * 0.04;
  static double imageMd(BuildContext context) => MediaQuery.of(context).size.width * 0.1;
  static double imageLg(BuildContext context) => MediaQuery.of(context).size.width * 0.08;

  /// Font sizes
  static double fontSizeSm(BuildContext context) => MediaQuery.of(context).size.width * 0.02;
  static double fontSizeMd(BuildContext context) => MediaQuery.of(context).size.width * 0.035;
  static double fontSizeLg(BuildContext context) => MediaQuery.of(context).size.width * 0.05;

  // Button sizes
  static double buttonHeight(BuildContext context) => MediaQuery.of(context).size.height * 0.05;
  static double buttonRadius(BuildContext context) => MediaQuery.of(context).size.width * 0.03;
  static double buttonWidth(BuildContext context) => MediaQuery.of(context).size.width * 0.3;
  static double buttonElevation(BuildContext context) => MediaQuery.of(context).size.width * 0.02;

  /// Default spacing
  static double defaultPadding(BuildContext context) => MediaQuery.of(context).size.height * 0.03;
  static double spaceBthItems(BuildContext context) => MediaQuery.of(context).size.height * 0.018;
  static double defaultBtwSections(BuildContext context) => MediaQuery.of(context).size.height * 0.04;
  static double spaceBtwItems(BuildContext context) => MediaQuery.of(context).size.width * 0.018;

  /// Border radius
 static double borderRadiusLg(BuildContext context) => MediaQuery.of(context).size.width * 0.03;

  /// Divider height
  static double dividerHeight(BuildContext context) => MediaQuery.of(context).size.height * 0.001;

}
