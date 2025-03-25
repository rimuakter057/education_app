import 'package:flutter/material.dart';
import '../../../../../app/utils/text/app_text_bn.dart';
import '../../community_screen/community_screen.dart';
import '../../courses_screen/courses_screen.dart';
import '../../home_screen/home_screen.dart';
import '../../interview_preparation_screen/interview_preparation_screen.dart';
import '../../quizzesScreen/quizzes_screen.dart';
import '../../setting_screen/setting_screen.dart';

/// drawer item custom list tile implement navigation using switch case

class NavigationUtils {
  NavigationUtils._();
  static void onTapHandler(BuildContext context, String menuItem) {
    // Using a switch case to navigate based on menuItem
    switch (menuItem) {
      case AppTextBn.home:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case AppTextBn.communityVideos:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CommunityVideosScreen()),
        );
        break;
      case AppTextBn.courses:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CoursesScreen()),
        );
        break;
      case AppTextBn.quizzes:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QuizzesScreen()),
        );
        break;
      case AppTextBn.interviewPreparationSection:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InterviewPreparationScreen()),
        );
        break;
      case AppTextBn.settings:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingsScreen()),
        );
        break;
      case AppTextBn.logout:
        // Add logout logic here
        break;
      default:
        debugPrint('Unknown menu item: $menuItem');
        break;
    }
  }
}
