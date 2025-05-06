import 'package:flutter/material.dart';

// class AppColors {
//   static const primary = Color(0xFF004D40); // Teal[900]
//   static const secondary = Color(0xFF00695C); // Teal[800]
//   static const accent = Color(0xFF00897B); // Teal[600]
//   static const lightBackground = Color(0xFFE0F2F1); // Light teal background
//   static const white = Colors.white;
//   static const textLight = Colors.white70;
//   static const textDark = Colors.black87;
// }

class AppColors {
  static const Color primaryDark = Color(0xFF004D40); // dark green
  static const Color primaryMedium = Color(0xFF00796B); // mid green
  static const Color cardLight = Color(0xFFDFF5F2);     // light card background
  static const Color white = Colors.white;
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textLight = Color(0xFFB2DFDB);     // date text
}

class AppTextStyles {
  
  static const heading = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const subheading = TextStyle(
    fontSize: 16,
    color: AppColors.textLight,
  );

  static const leadCount = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const leadLabel = TextStyle(
    fontSize: 14,
    color: AppColors.textLight,
  );

  static const menuTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryDark,
  );
}

class AppSpacing {
  static const double padding = 60.0;
  static const double verticalPadding = 10.0;
  static const double radius = 20.0;
  static const double iconSize = 40.0;
}
