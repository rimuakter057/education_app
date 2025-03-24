import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:education_app/features/ui/common/widget/Custom_container.dart';
import 'package:education_app/features/ui/common/widget/custom_text.dart';
import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  const SmallContainer({
    super.key,
    this.borderRadius,
    this.containerColor,
    this.text,
    this.child, // Optional child (Row/Column)
  });

  final BorderRadiusGeometry? borderRadius;
  final Color? containerColor;
  final String ?text;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      containerColor: containerColor ?? AppColors.secondaryTextColor,
      borderWidth: 1,
      width: AppSizes.containerWidthSm(context),
      height: AppSizes.containerHeightSm(context),
      borderColor: AppColors.black,
      borderRadius: borderRadius ?? BorderRadius.circular(AppSizes.borderRadiusSm(context)),

      child: child ?? Center(
        child: CustomText(
          text: text??" ",
          textStyle: AppTextStyle.textStyleSm(context),
        ),
      ),
    );
  }
}
