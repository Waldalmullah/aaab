import 'package:flutter/material.dart';

class Constants {
  /// static const String DOG = 'dog';
}

class AppColors {
  static const Color backgroundColor = Color(0xffFFFFFF);
  static const Color primary = Color(0xffFFD683);
  static const Color textField = Color(0xffF0F0F0);
  static const Color textColor = Color(0xff59344F);

  static const Color maroni = Color(0xff59344F);
  static const Color yellow = Color(0xffFFD683);
  static const Color lightYellow = Color(0xffFFEBC1);
}

class AppThemes {
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.primary),
  );

  ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
}
