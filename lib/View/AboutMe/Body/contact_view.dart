import 'package:business_profile/Controller/AboutMe/about_me_controller.dart';
import 'package:business_profile/Controller/Home/home_controller.dart';
import 'package:business_profile/Model/AboutMe/about_me_model.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  ContactView({
    super.key,
    required this.controller,
  });
  AboutMeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<AboutMeModel>(
          future: controller.contactData,
          builder:
              (BuildContext context, AsyncSnapshot<AboutMeModel> snapshot) {
            if (snapshot.hasData) {
              print(controller.contactData);
              return Text(controller.contactData.toString());
            } else {
              return Container();
            }
          }),
    );
  }
}
