import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.color, this.height});
  final Color? color;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height ?? AppSizes.dividerHeight(context),
      color: color ?? AppColors.dividerColor,
    );
  }
}
