import 'package:flutter/material.dart';
import 'package:journal_main/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  //initially theme is light mode
  ThemeData _themeData = lightMode;

  //getter method to access the theme from other part of the code

  ThemeData get themedata => _themeData;

  //getter method to see if we are in dark mode or not

  bool get isDarkMode => _themeData == darkmode;

  //setter method to set the new theme

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkmode;
    } else {
      themeData = lightMode;
    }
  }
}
