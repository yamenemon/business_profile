import 'package:business_profile/Controller/AboutMe/about_me_controller.dart';
import 'package:business_profile/Controller/Home/home_controller.dart';
import 'package:business_profile/Model/AboutMe/about_me_model.dart';
import 'package:business_profile/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactView extends StatelessWidget {
  ContactView({
    super.key,
    required this.controller,
  });
  AboutMeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 80.w,
      height: 80.w,
      child: FutureBuilder<AboutMeModel>(
          future: controller.contactData,
          builder:
              (BuildContext context, AsyncSnapshot<AboutMeModel> snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  Container(
                    height: 60.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: "Age",
                                  style: GoogleFonts.lato(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  children: [
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 30,
                                        height: 2,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: secondaryColor,
                                          ),
                                        ),
                                      ),
                                      alignment: PlaceholderAlignment.bottom,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                snapshot.data!.age.toString(),
                                style: GoogleFonts.lato(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            } else {
              return Container();
            }
          }),
    );
  }
}
