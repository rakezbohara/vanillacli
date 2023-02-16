import 'package:flutter/material.dart';
import 'package:@appName/base/base_page.dart';

class @NamePage extends BasePage {
  @override
  _@NamePageState createState() => _@NamePageState();
}

class _@NamePageState extends State<@NamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Text("@msg"),
          ],
        ),
      ),
    );
  }
}


