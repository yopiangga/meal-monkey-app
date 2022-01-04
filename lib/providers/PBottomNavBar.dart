import 'package:flutter/material.dart';

class PBottomNavBar with ChangeNotifier {
  int _isMenuActive = 0;

  int get isMenuActive => _isMenuActive;

  set setMenuActive(int i) {
    _isMenuActive = i;
    notifyListeners();
  }
}
