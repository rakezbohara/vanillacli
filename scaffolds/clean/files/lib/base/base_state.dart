import 'base_page.dart';
import 'package:flutter/material.dart';

abstract class BaseState<Page extends BasePage> extends State<Page> {
  BaseState();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }
}
