import 'package:business_profile/Controller/Home/home_controller.dart';
import 'package:business_profile/View/body.dart';
import 'package:business_profile/View/menu_buttons.dart';
import 'package:business_profile/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final homeControllerProvider =
    ChangeNotifierProvider((ref) => HomeController());

class BaseView extends StatelessWidget {
  // HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (_, WidgetRef ref, __) {
          final controller = ref.watch(homeControllerProvider);
          return Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
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
                    color: primaryColor,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  // shape: BoxShape.circle,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0)),
                                ),
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: 10, left: 10, right: 10, bottom: 10),
                                  width: 25.w,
                                  height: 25.w,
                                  padding: EdgeInsets.all(5.w),
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage('images/pp.jpeg'),
                                    ),
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
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Divider(
                          color: Colors.grey,
                          height: 1,
                        ),
                        MenuButtons(
                          controller: controller,
                          clickedIndex: 0,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 1,
                        ),
                        MenuButtons(
                          controller: controller,
                          clickedIndex: 1,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 2,
                        ),
                        MenuButtons(
                          controller: controller,
                          clickedIndex: 2,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 2,
                        ),
                        MenuButtons(
                          controller: controller,
                          clickedIndex: 3,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 2,
                        ),
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
