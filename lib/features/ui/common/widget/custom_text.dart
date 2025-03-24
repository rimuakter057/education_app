import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:flutter/material.dart';

// Custom Text Widget
class CustomText extends StatelessWidget {
  final String text;
  final int? maxLines;
   final TextStyle? textStyle;

  const CustomText({
    super.key,
    required this.text,
    this.textStyle, this.maxLines,

  });

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxLines??1,
      overflow: TextOverflow.ellipsis,
      text,
      style: textStyle ??AppTextStyle.commonTextStyle(context)

    );
  }
}
