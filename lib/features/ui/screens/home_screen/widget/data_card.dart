import 'package:education_app/app/utils/text/app_size.dart';
import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:education_app/features/ui/common/widget/custom_text.dart';
import 'package:flutter/material.dart';
import '../data_list/data_list.dart';

class DataCard extends StatelessWidget {
  const DataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppSizes.spaceBthSections(context)),
          CustomText(text: "Course Description"),
          _buildCard(
            title: "What You'll Learn",
            items: DataList.courseDescription,
            context: context,
          ),
          // Requirements Card
          _buildCard(
            title: "Requirements",
            items: DataList.requirements,
            context: context,
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required List<String> items,
    required BuildContext context,
  }) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultPadding(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: title),
              SizedBox(height: 8),
              for (var item in items) ...[
                CustomText(
                  maxLines: 2,
                  text: item,
                  textStyle: AppTextStyle.dataTextStyle(context),
                ),
                SizedBox(height: 3),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
