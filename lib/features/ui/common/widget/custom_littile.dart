import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:education_app/features/ui/common/widget/custom_text.dart';
import 'package:flutter/material.dart';

// Custom ListTile Widget
class CustomListTile extends StatelessWidget {
  final String? title;
  final IconData? leadingIcon;
  final VoidCallback? onTap;
  final Color? leadingIconColor;
  final Widget? subtitle;
  final Widget? trailing;
  final TextStyle? titleStyle;

  const CustomListTile({
    super.key,
    this.title,
    this.subtitle,
    this.leadingIcon,
    this.onTap,
    this.leadingIconColor,
    this.trailing,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon, color: leadingIconColor),
      title:CustomText(text: title!,textStyle:AppTextStyle.titleTextStyle(context),),
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
