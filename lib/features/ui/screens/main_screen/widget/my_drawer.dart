import 'package:education_app/app/utils/text/app_text_styles.dart';
import 'package:education_app/app/utils/text/text_size.dart';
import 'package:flutter/material.dart';

import '../../../../../app/utils/color/app_colors.dart';
import '../../../../../app/utils/color/gradient_color.dart';
import '../../../../../app/utils/text/app_text_bn.dart';
import '../../../../../app/utils/text/app_text_en.dart';
import '../../community_screen/community_screen.dart';
import '../../courses_screen/courses_screen.dart';
import '../../home_screen/home_screen.dart';
import '../../interview_preparation_screen/interview_preparation_screen.dart';
import '../../quizzesScreen/quizzes_screen.dart';
import '../../setting_screen/setting_screen.dart';
import '../function/navigation_utils.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> drawerItems = [
      {
        'icon': Icons.home,
        'text': AppTextBn.home,
        'color': AppColors.blue,
      },
      {
        'icon': Icons.video_library,
        'text': AppTextBn.communityVideos,
        'color': AppColors.indigo,
      },
      {
        'icon': Icons.school,
        'text': AppTextBn.courses,
        'color': AppColors.purple,
      },
      {
        'icon': Icons.quiz,
        'text': AppTextBn.quizzes,
        'color': AppColors.yellow,
      },
      {
        'icon': Icons.business_center,
        'text':AppTextBn.interviewPreparation,
        'color': AppColors.red,
      },
      {
        'icon': Icons.settings,
        'text': AppTextBn.settings,
        'color': AppColors.orange,
      },
      {
        'icon': Icons.logout,
        'text': AppTextBn.logout,
        'color': AppColors.grey,
      },
    ];
    return Drawer(
      child: Column(
        children: [
          /// Header Section with Gradient and Profile
          Container(
            width: AppSizes.drawerContainerWidth(context),
            height:AppSizes.drawerContainerHeight(context),
            decoration: BoxDecoration(
              gradient: AppGradients.primaryGradient,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Stack(
                children: [
                  Positioned(
                    left: AppSizes.leftPosition(context),
                    bottom: AppSizes.circleBottomPosition(context),
                    child: CircleAvatar(radius: AppSizes.getCircleRadius(context)),
                  ),

                  Positioned(
                    left: AppSizes.leftPosition(context),
                    bottom: AppSizes.textBottomPosition(context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Name', // Replace with user's name
                          style: AppTextStyle.drawerTextStyle(context,customColor: AppColors.white),
                        ),
                        SizedBox(height: 5),
                        // Email or Other Info with responsive font size
                        Text(
                          'yourname@example.com', // Replace with user's email
                          style: AppTextStyle.drawerTextStyle(
                            context,
                            fontWeight: FontWeight.w500,
                            customColor: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// Drawer Menu Items with dynamic padding and font sizes
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: drawerItems.length,
              itemBuilder: (context, index) {
                return _drawerItem(
                  context,
                  drawerItems[index]['icon'],
                  drawerItems[index]['text'],
                  drawerItems[index]['color'],
                      () {
                    Navigator.pop(context);
                    NavigationUtils.onTapHandler(context, drawerItems[index]['text']);
                               },
                );
              },
            ),

          ),
        ],
      ),
    );
  }

// drawer item widget
  Widget _drawerItem(
      BuildContext context,
      IconData icon,
      String title,
      Color iconColor,
      Function()? onTap,  // added onTap function
      ) {
    return ListTile(
      leading: Icon(icon, color: iconColor), // Set custom icon color
      title: Text(title, style: AppTextStyle.drawerTextStyle(context)),
      onTap: onTap,  // Handle onTap here
    );
  }





  void onTapHandler(BuildContext context, String menuItem) {
    // Using a switch case to navigate based on menuItem
    switch (menuItem) {
      case AppTextBn.home:
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case AppTextBn.communityVideos:
        Navigator.push(context, MaterialPageRoute(builder: (context) => CommunityVideosScreen()));
        break;
      case AppTextBn.courses:
        Navigator.push(context, MaterialPageRoute(builder: (context) => CoursesScreen()));
        break;
      case AppTextBn.quizzes:
        Navigator.push(context, MaterialPageRoute(builder: (context) => QuizzesScreen()));
        break;
      case AppTextBn.interviewPreparationSection:
        Navigator.push(context, MaterialPageRoute(builder: (context) => InterviewPreparationScreen()));
        break;
      case AppTextBn.settings:
        Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
        break;
      case AppTextBn.logout:
      // Add logout logic here
        break;
      default:
        print('Unknown menu item: $menuItem');
        break;
    }
  }






}
