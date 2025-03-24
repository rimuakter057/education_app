import 'package:flutter/material.dart';

// Custom Container Widget
class CustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final double? borderWidth;
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? containerColor;
  final Color? borderColor;
  final Gradient? gradient;
  final Radius?  bottomLeft;
  final Radius?  bottomRight;
  final Radius?  topLeft;
  final Radius?  topRight;

  const CustomContainer({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.margin,
    this.padding,
    this.gradient,
    this.borderRadius,
    this.borderWidth,
    this.containerColor,
    this.borderColor,
    this.bottomLeft,
    this.bottomRight,
    this.topLeft,
    this.topRight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        gradient: gradient,
        border: Border.all(
            color: borderColor?? Colors.transparent,
            width: borderWidth ?? 0),
        borderRadius: BorderRadius.only(
          bottomLeft:bottomLeft?? Radius.circular(0),
          bottomRight: bottomRight?? Radius.circular(0),
          topLeft:topLeft?? Radius.circular(0),
          topRight: topRight?? Radius.circular(0),
        ),
        color:containerColor ,
      ),
      child: child,
    );
  }
}
