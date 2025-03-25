

import 'package:education_app/app/utils/color/app_colors.dart';
import 'package:education_app/app/utils/text/app_text_bn.dart';
import 'package:flutter/material.dart';

/// drawer item list
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