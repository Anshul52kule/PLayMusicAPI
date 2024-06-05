import 'package:flutter/material.dart';
import 'package:flutter_application_1/MODE/darkmode.dart';
import 'package:flutter_application_1/MODE/lightmode.dart';

class themeProvider extends ChangeNotifier {
  ThemeData _themeData = darkmode;
  ThemeData get themeData => _themeData;

  bool get isdarkMode => _themeData == darkmode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;

    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightmode) {
      themeData = darkmode;
    } else {
      themeData = lightmode;
    }
  }
}
