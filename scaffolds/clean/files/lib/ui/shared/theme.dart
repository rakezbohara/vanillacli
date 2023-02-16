import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';

class AppTheme {
  static final ThemeData _appThemeData = ThemeData(
      // Define the default brightness and colors.
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.light,
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLight,
      appBarTheme: _appBarTheme,
      // Define the default font family.
      fontFamily: 'figtree',
      textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 26.0, fontWeight: FontWeight.w700, color: Colors.black),
        headline2: TextStyle(
            fontSize: 23.0, fontWeight: FontWeight.bold, color: Colors.black),
        headline3: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
        headline4: TextStyle(
            fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
        headline5: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
        headline6: TextStyle(
            fontSize: 13.0, fontWeight: FontWeight.bold, color: Colors.black),
        bodyText1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
        bodyText2: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),

        subtitle1: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            color: Color(0xFF3D505D)), //Style for textformfield
        subtitle2: TextStyle(
            fontSize: 14.0,
            color: Color(0xFF3D505D),
            fontWeight: FontWeight.normal),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          )),
          side: MaterialStateProperty.all(
              const BorderSide(width: 1, color: primaryColor)),
          foregroundColor: MaterialStateProperty.all(primaryColor),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
          textStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 16),
          ),
        ),
      ),
      sliderTheme: const SliderThemeData(
        trackHeight: 8.0,
        thumbShape: RoundSliderThumbShape(
          enabledThumbRadius: 8.0,
          elevation: 4.0,
          pressedElevation: 4.0,
        ),
      ),
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(secondary: accentColor, primary: primaryColor)
      // .copyWith(
      //     primarySwatch: generateMaterialColor(primaryColor),
      //     secondary: accentColor),
      );

  static final AppBarTheme _appBarTheme = AppBarTheme(
      color: Colors.white,
      actionsIconTheme: const IconThemeData(color: Colors.white),
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light
          .copyWith(systemNavigationBarColor: Colors.white),
      titleTextStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black));

  static ThemeData getAppThemeData() {
    return _appThemeData;
  }

  static TextStyle? getHeading1Style(BuildContext context) {
    return Theme.of(context).textTheme.headline1;
  }

  static TextStyle? getHeading3Style(BuildContext context) {
    return Theme.of(context).textTheme.headline3;
  }

  static TextStyle? getHeading4Style(BuildContext context) {
    return Theme.of(context).textTheme.headline4?.copyWith(color: primaryColor);
  }

  static TextStyle? getHeading5Style(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .headline5
        ?.copyWith(color: primaryColor, height: 1.1);
  }

  static TextStyle? getSubtitel1Style(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1?.copyWith(height: 1.4);
  }

  static TextStyle? getSubtitel2Style(BuildContext context) {
    return Theme.of(context).textTheme.subtitle2?.copyWith(height: 1.4);
  }

  static TextStyle? getBody1Style(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(height: 1.4);
  }

  static TextStyle? getBody2Style(BuildContext context) {
    return Theme.of(context).textTheme.bodyText2?.copyWith(height: 1.4);
  }

  static TextStyle? getBody2GreyStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText2
        ?.copyWith(color: Colors.black.withOpacity(.6));
  }
}
