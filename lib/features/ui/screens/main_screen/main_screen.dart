import 'package:education_app/app/utils/asset_path.dart';
import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:education_app/app/utils/text/app_text_bn.dart';
import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:education_app/features/ui/common/widget/Custom_container.dart';
import 'package:education_app/features/ui/common/widget/custom_appbar.dart';
import 'package:education_app/features/ui/common/widget/custom_divider.dart';
import 'package:education_app/features/ui/common/widget/custom_text.dart';
import 'package:education_app/features/ui/screens/main_screen/widget/body/doc_container.dart';
import 'package:education_app/features/ui/screens/main_screen/widget/body/option_container.dart';
import 'package:education_app/features/ui/screens/main_screen/widget/drawer/my_drawer.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key,});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Widget gap= SizedBox(
      height: AppSizes.spaceBtwSections(context),
    );
    return Scaffold(
      appBar: CustomAppBar(title: AppTextBn.flutterAcademy,icon: Icons.sunny,),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultPadding(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gap,
              CustomText(
                text: AppTextBn.documentation,
                textStyle: AppTextStyle.headerTextStyle(context,textColor: AppColors.blue),
              ),
              gap,
              _buildDocContainer(),
              _buildOptionItem(gap, context),
            ],
          ),
        ),
      ),
    );
  }

  /// choose your option
  Column _buildOptionItem(Widget gap, BuildContext context) {
    return Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gap,
                CustomText(
                  text: AppTextBn.community,
                  textStyle: AppTextStyle.headerTextStyle(context,textColor: AppColors.blue),
                ),
                gap,
                OptionContainer(boarderColor: AppColors.yellow,
                  imageUrl:  AssetImagePath.dartIcon,
                  titleText: AppTextBn.bangladeshCommunity,
                  subtitleText: AppTextBn.contactFlutterDevelopers,
                ),
                gap,
                CustomText(
                  text: AppTextBn.flutterAndDartCourse,
                  textStyle: AppTextStyle.headerTextStyle(context,textColor: AppColors.blue),
                ),
                gap,
                OptionContainer(boarderColor: AppColors.red,
                    imageUrl: AssetImagePath.dartIcon,
                    titleText: AppTextBn.videosCourse,
                    subtitleText: AppTextBn.watchVideoTutorial
                ),
                gap,
                CustomText(
                  text: AppTextBn.problemSolving,
                  textStyle: AppTextStyle.headerTextStyle(context,textColor: AppColors.blue),
                ),
                SizedBox(height: AppSizes.spaceBthItems(context),),
                DividerWidget(),
                gap,
                OptionContainer(boarderColor: AppColors.orange,
                  imageUrl:  AssetImagePath.dartIcon,
                  titleText: AppTextBn.codingChallenges,
                  subtitleText: AppTextBn.codingChallenges,
                ),
                gap,
                CustomText(
                  text: AppTextBn.quiz,
                  textStyle: AppTextStyle.headerTextStyle(context,textColor: AppColors.blue),
                ),
                gap,
                OptionContainer(boarderColor: AppColors.yellow,
                  imageUrl:  AssetImagePath.dartIcon,
                  titleText: AppTextBn.flutterAndDartQuiz,
                  subtitleText: AppTextBn.contactFlutterDevelopers,
                ),
                gap,
                CustomText(
                  text: AppTextBn.interviewPreparation,
                  textStyle: AppTextStyle.headerTextStyle(context,textColor: AppColors.blue),
                ),
                gap,
                OptionContainer(boarderColor: AppColors.orange,
                  imageUrl: AssetImagePath.dartIcon,
                  titleText: AppTextBn.interviewPreparation,
                  subtitleText: AppTextBn.contactFlutterDevelopers,
                ),
              ],
            );
  }

  /// read doc container
  Row _buildDocContainer() {
    return Row(
              children: [
                DocContainer(
                  imageUrl: AssetImagePath.flutterIcon,
                  titleText: AppTextBn.flutter,
                  subtitleText: AppTextBn.documentation,
                ),
                SizedBox(width: 8,),
                DocContainer(
                  imageUrl: AssetImagePath.dartIcon,
                  titleText: AppTextBn.dart,
                  subtitleText: AppTextBn.documentation,
                ),
              ],
            );
  }
}






