import 'package:business_profile/Controller/Home/home_controller.dart';
import 'package:business_profile/View/Home/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final homeControllerProvider =
    ChangeNotifierProvider((ref) => HomeController());

class HomeView extends StatelessWidget {
  // HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Container(
                            height: 130.h,
                            color: Colors.amber,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.r),
                              child: Container(
                                  height: 100,
                                  width: 100,
                                  color: Colors.orange),
                            ),
                          ),
                        ),
                        Text("Khaliful Islam"),
                        SizedBox(height: 50.h),
                        GestureDetector(
                          onTap: () {
                            controller.updateIndex(1);
                          },
                          child: Container(height: 85.h, color: Colors.cyan),
                        ),
                        Divider(),
                        GestureDetector(
                          onTap: () {
                            controller.updateIndex(2);
                          },
                          child: Container(height: 85.h, color: Colors.amber),
                        ),
                        Divider(),
                        GestureDetector(
                          onTap: () {
                            controller.updateIndex(3);
                          },
                          child: Container(height: 85.h, color: Colors.green),
                        ),
                        Divider(),
                        GestureDetector(
                          onTap: () {
                            controller.updateIndex(4);
                          },
                          child: Container(height: 85.h, color: Colors.yellow),
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
