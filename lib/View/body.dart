import 'package:business_profile/View/AboutMe/about_me.dart';
import 'package:business_profile/View/Home/home_view.dart';
import 'package:business_profile/View/base_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 10.w, top: 15.h, bottom: 15.h, right: 15.w),
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
            case 4:
              value = Offset(1.0, 0.5);
              break;
          }

          return controller.selectedIndex == 0
              ? HomeView(controller: controller, value: value)
              : AboutMe(value: value);
        }),
      ),
    );
  }
}
