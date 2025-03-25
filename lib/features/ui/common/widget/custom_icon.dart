import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    this.onTap,
    this.iconColor,
    this.iconSize,
  });

  final IconData? icon;
  final void Function()? onTap;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon ?? Icons.search,
        color: iconColor ?? AppColors.white,
        size: iconSize ?? AppSizes.iconMd(context),
      ),
    );
  }
}
