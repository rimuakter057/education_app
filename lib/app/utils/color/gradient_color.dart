import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppGradients {
  AppGradients._(); // Private constructor to prevent instantiation

  //primary gradient
  static LinearGradient primaryGradient = LinearGradient(
    colors: [AppColors.gradientStartColor, AppColors.gradientEndColor,], // Blue and Lavender (Lilac)
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: const [0.0, 0.80],
  );

  // **🟢 Green Gradient**
  static const LinearGradient greenGradient = LinearGradient(
    colors: [Color(0xFF4BFF68), Color(0xFF0FA958)], // Neon Green to Deep Green
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // **🟠 Orange Gradient**
  static const LinearGradient orangeGradient = LinearGradient(
    colors: [Color(0xFFFFA500), Color(0xFFFF4500)], // Bright Orange to Deep Orange
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // **🔴 Red Gradient**
  static const LinearGradient redGradient = LinearGradient(
    colors: [Color(0xFFFF4B4B), Color(0xFFD32F2F)], // Vivid Red to Dark Red
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // **🌌 Purple Gradient**
  static const LinearGradient purpleGradient = LinearGradient(
    colors: [Color(0xFF800080), Color(0xFF8A2BE2)], // Deep Purple to Blue Violet
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // **⚫ Dark Mode Gradient**
  static const LinearGradient darkGradient = LinearGradient(
    colors: [Color(0xFF121212), Color(0xFF333333)], // Dark Black to Grayish Black
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // **🌟 Gold Gradient**
  static const LinearGradient goldGradient = LinearGradient(
    colors: [Color(0xFFFFD700), Color(0xFFFFA500)], // Golden Yellow to Orange
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

}
