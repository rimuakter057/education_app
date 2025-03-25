import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/color/gradient_color.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:education_app/app/utils/text/app_text_en.dart';
import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:education_app/features/ui/common/widget/custom_icon.dart';
import 'package:education_app/features/ui/common/widget/custom_text.dart';
import 'package:education_app/features/ui/screens/home_screen/widget/small_container.dart';
import 'package:flutter/material.dart';

class SelectedAcvContainer extends StatelessWidget {
  const SelectedAcvContainer({
    super.key,
    this.icon,
    this.text,
    required this.onTap,
    this.isSelected = false,
  });

  final Icon? icon;
  final String? text;
  final void Function()? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: SmallContainer(
          borderWidth: 0,
          borderColor: Colors.transparent,
          gradient: isSelected ? AppGradients.primaryGradient : null,
          height: AppSizes.containerHeightXMd(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ??
                  CustomIcon(
                    icon: Icons.book,
                    iconColor:
                        isSelected
                            ? AppColors.white
                            : AppColors.grey, // Icon color change
                  ),
              CustomText(
                text: text ?? AppTextEn.curriculum,
                textStyle: AppTextStyle.textStyleSm(
                  context,
                  textColor: isSelected ? AppColors.white : AppColors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
