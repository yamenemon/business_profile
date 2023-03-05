import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:business_profile/Animation/slide_animation.dart';
import 'package:business_profile/Controller/Home/home_controller.dart';
import 'package:business_profile/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  AboutMe({
    super.key,
    required this.controller,
    required this.value,
  });
  final HomeController controller;
  final Offset value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SlideAnimation(
          offsetValue: value,
          child: Container(
            width: 700.w,
            height: MediaQuery.of(context).size.height - 20.h,
            color: Color.fromARGB(255, 34, 34, 34),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Khaliful islam ",
                    style: GoogleFonts.lato(
                        fontSize: 50.sp,
                        fontWeight: FontWeight.bold,
                        color: secondaryColor),
                  ),
                  SizedBox(
                    width: 250.w,
                    child: DefaultTextStyle(
                      style: GoogleFonts.lato(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            "snapshot.data!",
                          ),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
