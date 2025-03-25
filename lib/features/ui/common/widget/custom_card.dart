import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:flutter/material.dart';

// Custom Card Widget
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? shadowColor;
  const CustomCard({
    super.key,
    required this.child,
    this.margin,
    this.padding,
    this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: shadowColor ?? AppColors.secondaryTextColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppSizes.borderRadiusSm(context),
        ), // গোল কোণা
      ),
      child: child,
    );
  }
}
