import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:education_app/app/utils/text/app_text_bn.dart';
import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:education_app/features/ui/common/widget/Custom_container.dart';
import 'package:education_app/features/ui/common/widget/custom_text.dart';
import 'package:flutter/material.dart';

class OptionContainer extends StatelessWidget {
  const OptionContainer({
    super.key, required this.boarderColor, required this.imageUrl, required this.titleText, required this.subtitleText, this.onTap,
  });

  final Color boarderColor;
  final String imageUrl;
  final String titleText;
  final String subtitleText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: CustomContainer(
          borderWidth: 2,
          height: AppSizes.containerHeightMd(context),
          width: AppSizes.screenWidth(context),
          borderColor: boarderColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm(context)),

          child: Padding(
            padding: EdgeInsets.all(AppSizes.spaceBtwItems(context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  Image.asset(imageUrl,
                    height: AppSizes.imageMd(context),
                    width: AppSizes.imageMd(context),
                    fit: BoxFit.contain,
                  ),
                  //  SizedBox(width:AppSizes.spaceBtwItems(context) ,),
                  Flexible(
                    child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: AppSizes.opCoHeight(context),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(text: titleText),
                              CustomText(
                                textAlign: TextAlign.start,
                                maxLines: 2,
                                text: subtitleText,
                                textStyle: AppTextStyle.secondaryTextStyle(context),
                              ),
                            ],),
                        )
                      ),
                    
                    ),
                  ),
                ],),
          )),
    );
  }
}