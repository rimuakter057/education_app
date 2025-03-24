import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:education_app/app/utils/text/app_text_bn.dart';
import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:education_app/features/ui/common/widget/Custom_container.dart';
import 'package:education_app/features/ui/common/widget/custom_text.dart';
import 'package:flutter/material.dart';


class DocContainer extends StatelessWidget {
  const DocContainer({
    super.key,required this.titleText,required this.subtitleText, required this.imageUrl, this.onTap,
  });
   final String imageUrl;
   final String titleText;
   final String subtitleText;
   final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: CustomContainer(
          borderWidth: 2,
          height: AppSizes.containerHeightLg(context),
          borderColor: AppColors.gradientEndColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm(context)),

          child: Padding(
            padding: EdgeInsets.all(AppSizes.spaceBthItems(context)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Align all children in the center
              crossAxisAlignment: CrossAxisAlignment.center, // Center children horizontally
              children: [
                Expanded(
                  child: Image.asset(
                  imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 10,),
                Expanded(
                  child: CustomText(text: titleText),
                ),
                Expanded(
                  child: CustomText(
                    text: subtitleText,
                    textStyle: AppTextStyle.secondaryTextStyle(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}