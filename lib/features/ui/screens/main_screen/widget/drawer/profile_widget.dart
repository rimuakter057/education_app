import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:education_app/features/ui/common/widget/custom_text.dart';
import 'package:flutter/material.dart';

/// drawer header section profile widget
class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: MediaQuery.sizeOf(context).width * 0.02,
          bottom: MediaQuery.sizeOf(context).height * 0.08,
          child: CircleAvatar(radius: AppSizes.getCircleRadius(context)),
        ),

        Positioned(
          left: MediaQuery.sizeOf(context).width * 0.02,
          bottom: MediaQuery.sizeOf(context).height * 0.008,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Your Name',
                textStyle: AppTextStyle.headerTextStyle(
                  context,
                  textColor: AppColors.white,
                  textFontSize: MediaQuery.sizeOf(context).height * 0.025,
                ),
              ),
              CustomText(
                text: 'example33@gmail.com',
                textStyle: AppTextStyle.headerTextStyle(
                  context,
                  textColor: AppColors.grey,
                  fontWeight: FontWeight.w400,
                  textFontSize: MediaQuery.sizeOf(context).height * 0.02,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
