import 'package:education_app/features/ui/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

import '../features/ui/screens/home_screen/home_screen.dart';
import '../practice_api/search_bar_screen.dart';

class EducationApp extends StatelessWidget {
  const EducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SearchBarScreen());
  }
}
