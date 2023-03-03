import 'package:business_profile/Animation/slide_animation.dart';
import 'package:business_profile/View/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Container(
        color: Colors.transparent,
        child: Consumer(builder: (_, WidgetRef ref, __) {
          final controller = ref.watch(homeControllerProvider);
          print(controller.selectedIndex);
          Offset value = Offset(0, -1.0);
          switch (controller.selectedIndex) {
            case 0:
              value = Offset(0, 1.0);
              break;
            case 1:
              value = Offset(0.5, 1.0);
              break;
            case 2:
              value = Offset(1.0, 0);
              break;
            case 3:
              value = Offset(0, -1.0);
              break;
            case 3:
              value = Offset(0.5, -1.0);
              break;
          }

          return Stack(
            children: [
              SlideAnimation(
                offsetValue: value,
                child: Container(
                  width: 700.w,
                  height: MediaQuery.of(context).size.height - 20.h,
                  color: controller.selectedIndex == 0
                      ? Colors.transparent
                      : Colors.white.withOpacity(0.85),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Khaliful islam ",
                          style: GoogleFonts.lato(
                              fontSize: 50.sp,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(230, 210, 134, 106)),
                        ),
                        Text(
                          "Mobile Application developer",
                          style: GoogleFonts.lato(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
