import 'package:flutter/material.dart';
import '../../../base/base_page.dart';

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


