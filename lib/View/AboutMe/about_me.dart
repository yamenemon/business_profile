import 'package:business_profile/Animation/slide_animation.dart';
import 'package:business_profile/Controller/AboutMe/about_me_controller.dart';
import 'package:business_profile/View/AboutMe/Body/about_me_title_view.dart';
import 'package:business_profile/View/AboutMe/Body/contact_view.dart';
import 'package:business_profile/utils/constant.dart';
import 'package:business_profile/utils/container_base_top_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final aboutMeProvider = ChangeNotifierProvider((ref) => AboutMeController());

class AboutMe extends StatelessWidget {
  AboutMe({
    super.key,
    required this.value,
  });
  final Offset value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Consumer(builder: (_, WidgetRef ref, __) {
          final controller = ref.watch(aboutMeProvider);
          return SlideAnimation(
            offsetValue: value,
            child: Container(
                width: 700.w,
                height: MediaQuery.of(context).size.height - 20.h,
                color: primaryColor,
                child: Padding(
                  padding: EdgeInsets.all(5.w),
                  child: Stack(
                    children: [
                      ContainerBaseTopView(),
                      Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Column(
                          children: [
                            AboutMeTitleView(),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    width: 90.w,
                                    height: 90.w,
                                    padding: EdgeInsets.all(5.w),
                                    decoration: new BoxDecoration(
                                      color: Colors.white,
                                      // shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('images/pp.jpeg'),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 90.w,
                                  height: 90.w,
                                  child: RichText(
                                    textAlign: TextAlign.justify,
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              'I am Web Designer @ Company.com\n\n',
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.sp,
                                              color: Colors.white),
                                        ),
                                        TextSpan(
                                          text:
                                              'Praesent ut tortor consectetur, semper sapien non, lacinia augue. Aenean arcu libero, facilisis et nisi non, tempus faucibus tortor. Mauris vel nulla aliquam, pellentesque enim ac, faucibus tortor. Nulla odio nibh, cursus sit amet urna id, dignissim euismod augue.Duis sollicitudin, libero porttitor rutrum ultrices, turpis lorem fermentum justo, quis ornare augue tortor non est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ContactView(controller: controller),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          );
        }));
  }
}
