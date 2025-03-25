import 'package:flutter/material.dart';

class AppSizes {
///screen size
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;


  /// drawer header section size
  static double minCircleSize(BuildContext context) => screenWidth(context) * 0.02;
  static double maxCircleSize(BuildContext context) => screenWidth(context) * 0.1;
  static double currentCircleSize(BuildContext context) => screenWidth(context) * 0.05;
  static double leftPosition(BuildContext context) => screenWidth(context) * 0.05;
  static double circleBottomPosition(BuildContext context) => screenHeight (context) *  0.05;
  static double textBottomPosition(BuildContext context) => screenHeight (context) *  0.02;
  static double headerTextSize(BuildContext context) => screenWidth(context) *  0.045;
  static double drawerContainerHeight(BuildContext context) => screenHeight (context)*  0.25;
  static double drawerContainerWidth(BuildContext context) => screenWidth(context);

  /// Define the min, max, and current circle size as dynamic values
  static double getCircleRadius(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    double minCircleSize = screenHeight * 0.025;
    double maxCircleSize = screenHeight * 0.06;

    double currentCircleSize = screenHeight * 0.05;

    return currentCircleSize.clamp(minCircleSize, maxCircleSize);
  }


  ///main screen body section
  static double containerHeightLg(BuildContext context) =>screenHeight (context) *  0.22;
  static double opCoHeight(BuildContext context) => screenWidth(context) *  0.2;
  static double containerHeightMd(BuildContext context) => screenWidth(context) *  0.3;
  static double containerHeightXMd(BuildContext context) => screenWidth(context) *  0.15;
  static double containerHeightSm(BuildContext context) => screenWidth(context)*  0.1;
  static double containerWidthSm(BuildContext context) => screenWidth(context) *  0.3;

  ///border radius
  static double borderRadiusSm(BuildContext context) => screenWidth(context) * 0.018;
  static double borderRadiusMd(BuildContext context) => screenWidth(context)* 0.045;
  static double borderRadiusLg(BuildContext context) => screenWidth(context) * 0.05;
  static double borderRadiusXl(BuildContext context) => screenWidth(context)* 0.07;

  /// Padding and margin size
  static double lg(BuildContext context) =>screenWidth(context)* 0.06;
  static double smallPadding(BuildContext context) =>screenWidth(context)* 0.02;

  // Icon sizes
  static double iconXs(BuildContext context) => screenWidth(context) * 0.03;
  static double iconSm(BuildContext context) => screenWidth(context) * 0.04;
  static double iconMd(BuildContext context) => screenWidth(context) * 0.06;
  static double iconLg(BuildContext context) => screenWidth(context) * 0.08;
///image
  static double imageXs(BuildContext context) => screenWidth(context) * 0.03;
  static double imageSm(BuildContext context) => screenWidth(context) * 0.04;
  static double imageMd(BuildContext context) => screenWidth(context) * 0.1;
  static double imageLg(BuildContext context) => screenWidth(context) * 0.08;

  /// Font sizes
  static double fontSizeSm(BuildContext context) => screenWidth(context) * 0.03;
  static double fontSizeMd(BuildContext context) => screenWidth(context) * 0.035;
  static double fontSizeLg(BuildContext context) => screenWidth(context)* 0.05;

  // Button sizes
  static double buttonHeight(BuildContext context) => screenHeight (context) * 0.05;
  static double buttonRadius(BuildContext context) => screenWidth(context)* 0.03;
  static double buttonWidth(BuildContext context) => screenWidth(context) * 0.3;
  static double buttonElevation(BuildContext context) => screenWidth(context)* 0.02;

  /// Default spacing
  static double defaultPadding(BuildContext context) => screenWidth(context) * 0.06;
  static double spaceBthItems(BuildContext context) => screenHeight (context)* 0.018;
  static double spaceBthSections(BuildContext context) => screenHeight (context)* 0.04;
  static double spaceBtwItems(BuildContext context) => screenWidth(context)* 0.018;
  static double spaceWTwoItems(BuildContext context) => screenWidth(context)* 0.08;
  static double sideSpace (BuildContext context) => screenHeight (context)* 0.12;
  static double smallHSpace(BuildContext context) => screenHeight (context) * 0.005;

  /// Divider height
  static double dividerHeight(BuildContext context) => screenHeight (context) * 0.001;

}
