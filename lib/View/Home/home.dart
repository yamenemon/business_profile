import 'package:business_profile/Controller/Home/home_controller.dart';
import 'package:business_profile/View/Home/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final homeControllerProvider =
    ChangeNotifierProvider((ref) => HomeController());

class HomeView extends StatelessWidget {
  // HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (_, WidgetRef ref, __) {
          final controller = ref.watch(homeControllerProvider);
          return Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            child: Stack(children: [
              Image.asset(
                'images/bg.jpg',
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 35.w,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 30.w,
                                height: 30.w,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('images/pp.jpeg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Khaliful Islam",
                                textScaleFactor: 1.5,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(230, 210, 134, 106),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Divider(color: Colors.grey),
                        MenuButtons(
                          controller: controller,
                          clickedIndex: 0,
                        ),
                        Divider(color: Colors.grey),
                        MenuButtons(
                          controller: controller,
                          clickedIndex: 1,
                        ),
                        Divider(color: Colors.grey),
                        MenuButtons(
                          controller: controller,
                          clickedIndex: 2,
                        ),
                        Divider(color: Colors.grey),
                        MenuButtons(
                          controller: controller,
                          clickedIndex: 3,
                        ),
                        Divider(color: Colors.grey),
                        MenuButtons(
                          controller: controller,
                          clickedIndex: 4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Body(),
                  ),
                ],
              )
            ]),
          );
        },
      ),
    );
  }
}

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
      child: Container(
        height: 50.h,
        width: MediaQuery.of(context).size.width,
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
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
