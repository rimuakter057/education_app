import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:education_app/features/ui/common/widget/Custom_container.dart';
import 'package:education_app/features/ui/common/widget/custom_text.dart';
import 'package:flutter/material.dart';

/// home body small controller

class SmallContainer extends StatelessWidget {
  const SmallContainer({
    super.key,
    this.borderRadius,
    this.containerColor,
    this.text,
    this.child,
    this.gradient,
    this.borderWidth,
    this.height,
    this.width,
    this.borderColor,
    this.padding, // Optional child (Row/Column)
  });

  final BorderRadiusGeometry? borderRadius;
  final Color? containerColor;
  final String? text;
  final Widget? child;
  final Gradient? gradient;
  final double? borderWidth;
  final double? height;
  final double? width;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: padding,
      gradient: gradient,
      containerColor: containerColor ?? AppColors.secondaryTextColor,
      borderWidth: borderWidth ?? 1,
      width: width ?? AppSizes.containerWidthSm(context),
      height: height ?? AppSizes.containerHeightSm(context),
      borderColor: borderColor ?? AppColors.black,
      borderRadius:
          borderRadius ??
          BorderRadius.circular(AppSizes.borderRadiusSm(context)),

      child:
          child ??
          Center(
            child: CustomText(
              text: text ?? " ",
              textStyle: AppTextStyle.textStyleSm(context),
            ),
          ),
    );
  }
}
