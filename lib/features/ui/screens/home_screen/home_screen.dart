import 'package:education_app/app/utils/asset_path.dart';
import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/color/gradient_color.dart';
import 'package:education_app/app/utils/text/app_size.dart';
import 'package:education_app/app/utils/text/app_text_styles.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultPadding(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),

              ///first row container
              _buildRowContainer(context),

              ///your introduction tile
              _buildIdentity(),

              /// selected activity Row Container
              _buildSelectActivity(context),
             SizedBox(height: AppSizes.smallHSpace(context),),
             CustomDivider(color: AppColors.black,),
              /// show class section
              DataCard(),
            /*  CardExpansion(),
              CardExpansion(
                titleText: "Advance Dart",
              ),*/
            ],
          ),
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
      title: "Rimu Akter",
      subtitle: Text("I am a student"),
    );
  }

  /// selected activity Row Container
  Row _buildSelectActivity(BuildContext context) {
    return Row(
      children: [
        SelectedAcvContainer(),
        SelectedAcvContainer(
        text: "details",
        ),
      ],
    );
  }

  /// build first row container
  Row _buildRowContainer(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SmallContainer(
            text: 'Beginner Friendly',
            containerColor: AppColors.amberShade,
            borderRadius: BorderRadius.circular(
              AppSizes.borderRadiusLg(context),
            ),
          ),
        ),
        SizedBox(width: AppSizes.spaceWTwoItems(context)),
        Flexible(
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
                    text: "6h 13min",
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






