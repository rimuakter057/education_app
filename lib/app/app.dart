import 'package:education_app/app/utils/app_theme.dart';
import 'package:flutter/material.dart';

import '../features/ui/screens/main_screen/main_screen.dart';


class EducationApp extends StatelessWidget {
  const EducationApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MainScreen(),
     );
  }
}







