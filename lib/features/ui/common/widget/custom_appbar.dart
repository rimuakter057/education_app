
import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/color/gradient_color.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final Gradient? gradient;
  final IconData?icon;

  const CustomAppBar({
    super.key,
    required this.title,
    this.leading,
     this.gradient, this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      // AppBar's height
      toolbarHeight: kToolbarHeight + 30,
      leading: leading,
      title: CustomText(
       text: title,
        textStyle: AppTextStyle.appbarTextStyle(context),
      ),
      actions:
          [
            IconButton(
              icon: Icon(icon??Icons.search, color: AppColors.white,size: AppSizes.iconMd(context),),
              onPressed: () {
                // Handle search action
              },
            ),
          ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: gradient??AppGradients.primaryGradient, // Gradient color for AppBar
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 30); // This sets the height of the AppBar
}
