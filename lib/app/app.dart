import 'package:education_app/features/ui/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

class EducationApp extends StatelessWidget {
  const EducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainScreen());
  }
}
