import 'package:flutter/material.dart';

abstract class BaseProvider extends ChangeNotifier {
  bool loading = false;

  void setLoading(value) {
    loading = value;
    notifyListeners();
  }

  bool isLoading() {
    return loading;
  }

  void disposeValues() {}
}
