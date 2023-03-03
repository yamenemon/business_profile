import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int selectedIndex = 1;
  List<String> menusItem = [
    "Home",
    "About Me",
    "Resume",
    "Portfolio",
    "Contact"
  ];

  HomeController() {
    print("object");
  }

  updateIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
