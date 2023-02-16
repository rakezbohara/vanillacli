import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:@appName/router.dart';
import 'package:@appName/ui/shared/app_colors.dart';
import 'package:@appName/ui/shared/theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    systemNavigationBarColor: primaryColor,
    statusBarColor: Colors.transparent,
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '@AppName',
      theme: AppTheme.getAppThemeData(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
    );
  }
}
