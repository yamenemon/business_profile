import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class HomeController extends ChangeNotifier {
  int selectedIndex = 0;
  List<String> menusItem = [
    "Home",
    "About Me",
    "Resume",
    "Portfolio",
    "Contact"
  ];
  bool menuItemHover = false;
  late Future<String> _data;

  HomeController() {
    print("object");
    _data = loadAsset();
  }
  Future<String> loadAsset() async {
    final data = await rootBundle.loadString('my_description.txt');
    return data;
  }

  updateIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
