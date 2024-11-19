import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
  bool _isDarkTheme = false;

  ThemeProvider() {
    _loadTheme();
  }

  // TODO - PR untk mengingat, ini itu apa sih?
  bool get isDarkTheme => _isDarkTheme;

  void toggleTheme(bool isDark) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isDarkTheme = isDark;
    await prefs.setBool("isDarkTheme", isDark);
    notifyListeners();
  }

  void _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // ?? => elvis operator: for defining a default value in our variable (to avoid NPE = Null Pointer Exception)
    _isDarkTheme = prefs.getBool("isDarkTheme") ?? false;
    notifyListeners();
  }
}

// file wajib ketika 