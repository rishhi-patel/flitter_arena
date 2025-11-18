import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  int currentPage = 0;
  bool isDarkTheme = false;

  void setPage(int page) {
    currentPage = page;
    notifyListeners();
  }

  void toggleTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
