import 'package:business_profile/Controller/Home/home_controller.dart';
import 'package:business_profile/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuButtons extends StatelessWidget {
  const MenuButtons({
    super.key,
    required this.controller,
    required this.clickedIndex,
  });

  final HomeController controller;
  final int clickedIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.updateIndex(clickedIndex);
      },
      child: MouseRegion(
        onHover: (event) {
          controller.menuItemHover = true;
        },
        onExit: (event) {
          controller.menuItemHover = false;
        },
        child: Container(
          height: 55.h,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home_work,
                      color: Colors.grey,
                      size: 5.w,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      controller.menusItem[clickedIndex],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: clickedIndex == controller.selectedIndex
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              VerticalDivider(
                width: 5,
                thickness: 5,
                color: clickedIndex == controller.selectedIndex
                    ? secondaryColor
                    : Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
