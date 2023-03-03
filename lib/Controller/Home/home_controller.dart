import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int selectedIndex = 1;

  HomeController() {
    print("object");
  }

  updateIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
