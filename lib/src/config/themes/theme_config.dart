import 'package:flutter/material.dart';

class ThemeConfig {
  static Color grey1 = const Color(0xff333333);
  static Color grey2 = const Color(0xff4f4f4f);
  static Color grey3 = const Color(0xff828282);
  static Color grey4 = const Color(0xffBDBDBD);
  static Color grey5 = const Color(0xffE0E0E0);
  static Color grey6 = const Color(0xffF2F2F2);
  static Color icon = const Color(0xff9098B1);
  static Color primary = const Color(0xffFA6521);
  static Color accent = const Color(0xff4A3455);
  static Color accentLight = const Color(0xff725A7E);
  // static Color accentLight = const Color(0xff725A7E);
  static Color red = const Color(0xffF97F7F);
  static Color white = Colors.white;

// static const Color primary = Color(0xffFA6521);
  // static const Color accent = Color(0xff4A3455);
  static const Color yellow = Color(0xffFFC833);
  static const Color green = Color(0xff53D1B6);
  static const Color purple = Color(0xff5C61F4);

  static Color black = const Color(0xff000000).withOpacity(0.8);
  // static const Color dark = Color(0xff162040);
  static const Color grey = Color(0xff9098B1);
  // static const Color grey1 = Color(0xff3A3C40);
  // static const Color grey3 = Color(0xff828282);
  // static const Color light = Color(0xffE3E6EB);
  static const Color bg = Color(0xffF2F4F6);
  // static const Color white = Color(0xffFFFFFF);
  static Color shadowColor = const Color(0xffE0E0E0).withOpacity(0.25);
  // static Color shadowDarkColor = const Color(0xffE0E0E0).withOpacity(0.25);
  static Color cardShadowColor = const Color(0xff959DA5).withOpacity(0.2);

  static ThemeMode themeMode(BuildContext context) {
    return ThemeConfig.isDark(context) ? ThemeMode.dark : ThemeMode.light;
  }

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  static Color? shadowLightColor(BuildContext context) {
    return ThemeConfig.isDark(context)
        ? const Color(0xff424242).withOpacity(0.9)
        : null;
  }

  static Color? shadowDarkColor(BuildContext context) {
    return ThemeConfig.isDark(context)
        ? const Color(0xff242424).withOpacity(0.9)
        : null;
  }
}
