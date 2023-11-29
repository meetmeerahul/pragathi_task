import 'package:flutter/material.dart';

class BottomNavIndex extends ChangeNotifier {
  int screenIdex = 0;

  int get getCurrentIndex {
    return screenIdex;
  }

  void updateIndex(int newIndex) {
    screenIdex = newIndex;
    notifyListeners();
  }
}
