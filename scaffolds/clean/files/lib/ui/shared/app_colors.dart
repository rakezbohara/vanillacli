import 'dart:math';

import 'package:flutter/material.dart';

const primaryColor = Color(0xff4361EE);
const primaryColorLight = Color.fromARGB(255, 87, 116, 243);
const primaryColorDark = Color.fromARGB(255, 32, 71, 243);
const accentColor = Color(0xff000000);
const secondaryColor = Color(0xffFDBF00);
const secondaryOutlineColor = Colors.black12;
const backGroundColor = Color(0xffE5E5E5);
const shareBorderColor = Color(0xffE0E0E0);
const disableColor = Color(0xffC4C4C4);
const greenColor = Color(0xff43A047);
const redColor = Color(0xffE53935);
const creamColor = Color(0xffFFF0CC);
const lightBlueColor = Color(0xffE9F0FD);
const greyBGColor = Color(0xffFAFAFA);
const greyTextColor = Color.fromARGB(153, 0, 0, 0);
const bluishWhiteColor = Color(0xffE7EFFD);
const orangeColor = Color(0xffFFB300);
const fadedOrangeColor = Color(0xffFFF7E5);
const greyColor = Color(0xff9E9E9E);
const bluishGray = Color(0xff90A4AE);
const lightGray = Color(0xffF5F5F5);
const grayColor = Color(0xffE0E0E0);
const darkRedColor = Color(0xffED2323);
const lightBluishColor = Color(0xffE7EFFD);
const lightBlue = Color(0xffD0D8FB);
const lightOrange = Color(0xFFFF9100);
const lightCyan = Color(0xFF01DAFF);
const darkgray = Color.fromARGB(170, 75, 75, 75);

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);
LinearGradient primaryGradient = const LinearGradient(colors: [
  Color(0xff2150E1),
  Color(0xff2150E1),
  Color(0xff8100C9),
  Color(0xffFF6F21),
], stops: [
  -.6,
  .24,
  .54,
  .84
]);
