
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,  // Set background color for entire scaffold
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.white,  // Set Drawer background color
      ),
    );
  }
}
