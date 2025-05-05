import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF004D40); // Teal[900]
  static const secondary = Color(0xFF00695C); // Teal[800]
  static const accent = Color(0xFF00897B); // Teal[600]
  static const lightBackground = Color(0xFFE0F2F1); // Light teal background
  static const white = Colors.white;
  static const textLight = Colors.white70;
  static const textDark = Colors.black87;
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
    fontSize: 28,
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
    color: AppColors.primary,
  );
}

class AppSpacing {
  static const double padding = 20.0;
  static const double radius = 20.0;
  static const double iconSize = 32.0;
}
