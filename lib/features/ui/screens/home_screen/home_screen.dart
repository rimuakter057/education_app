import 'package:education_app/app/utils/asset_path.dart';
import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:education_app/app/utils/text/app_text_en.dart';
import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:education_app/features/ui/common/widget/custom_appbar.dart';
import 'package:education_app/features/ui/common/widget/custom_card.dart';
import 'package:education_app/features/ui/common/widget/custom_divider.dart';
import 'package:education_app/features/ui/common/widget/custom_icon.dart';
import 'package:education_app/features/ui/common/widget/custom_list_tile.dart';
import 'package:education_app/features/ui/common/widget/custom_text.dart';
import 'package:education_app/features/ui/screens/home_screen/widget/class_card_expansion.dart';
import 'package:education_app/features/ui/screens/home_screen/widget/data_card.dart';
import 'package:education_app/features/ui/screens/home_screen/widget/select_activity_container.dart';
import 'package:education_app/features/ui/screens/home_screen/widget/small_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedActivity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppTextEn.dartProgramming,
        icon: Icons.search,
        leading: CustomIcon(icon: Icons.arrow_back,onTap: (){
          Navigator.pop(context);
        },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: AppSizes.screenWidth(context),
              height:
                  AppSizes.screenHeight(context) /
                  3, // Screen height er 3rd part
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetImagePath.flutterImage),
                  fit: BoxFit.cover, // To cover the container area
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(AppSizes.defaultPadding(context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///first row container
                  _buildRowContainer(context),

                  ///your introduction tile
                  _buildIdentity(),

                  Column(
                    children: [
                      /// selected activity Row Container
                      _buildSelectActivity(context),
                      SizedBox(height: AppSizes.smallHSpace(context)),
                      CustomDivider(color: AppColors.black),

                      selectedActivity == 0
                          ?
                          /// show curriculum class section
                          Column(
                            children: [
                              CardExpansion(),
                              CardExpansion(titleText: AppTextEn.advanceDart),
                            ],
                          )
                          :
                          /// details information card
                          DataCard(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///your introduction tile
  CustomListTile _buildIdentity() {
    return CustomListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(AssetImagePath.dartIcon),
      ),
      title: AppTextEn.studentName,
      subtitle: Text(AppTextEn.studentStatus),
    );
  }

  /// selected activity Row Container
  CustomCard _buildSelectActivity(BuildContext context) {
    return CustomCard(
      child: Row(
        children: [
          SelectedAcvContainer(
            isSelected: selectedActivity == 0,
            onTap: () {
              setState(() {
                selectedActivity = 0;
              });
            },
          ),
          SelectedAcvContainer(
            text: AppTextEn.details,
            isSelected: selectedActivity == 1,
            onTap: () {
              setState(() {
                selectedActivity = 1;
              });
            },
          ),
        ],
      ),
    );
  }

  /// build first row container
  Row _buildRowContainer(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SmallContainer(
            text: AppTextEn.beginnerFriendly,
            containerColor: AppColors.amberShade,
            borderRadius: BorderRadius.circular(
              AppSizes.borderRadiusLg(context),
            ),
          ),
        ),
        SizedBox(width: AppSizes.spaceWTwoItems(context)),
        Expanded(
          child: SmallContainer(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomIcon(
                  icon: Icons.alarm,
                  iconColor: Colors.black,
                  iconSize: AppSizes.iconSm(context),
                ),

                Flexible(
                  child: CustomText(
                    text: AppTextEn.courseDuration,
                    textStyle: AppTextStyle.textStyleSm(context),
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(width: AppSizes.sideSpace(context)),
      ],
    );
  }
}
