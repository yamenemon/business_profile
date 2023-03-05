import 'dart:convert';
import 'package:business_profile/Model/AboutMe/about_me_model.dart';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class AboutMeController extends ChangeNotifier {
  late Future<AboutMeModel> contactData;

  AboutMeController() {
    loadAboutMeJson();
    contactData = loadAboutMeJson();
  }
  Future<AboutMeModel> loadAboutMeJson() async {
    String jsonString = await rootBundle.loadString('contact.txt');
    Map<String, dynamic> data = json.decode(jsonString);
    AboutMeModel covertData = AboutMeModel.fromJson(data);
    print(covertData.age);
    print(covertData.email);
    return covertData;
  }
}
