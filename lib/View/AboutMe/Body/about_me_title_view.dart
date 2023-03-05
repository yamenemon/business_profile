import 'package:business_profile/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeTitleView extends StatelessWidget {
  const AboutMeTitleView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 30.w,
      color: Colors.transparent,
      child: Center(
        child: RichText(
          textAlign: TextAlign.right,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'About Me\n',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.sp,
                    color: templateGrey),
              ),
              TextSpan(
                text: 'Passionate and Dedicated',
                style: GoogleFonts.lato(
                  backgroundColor: secondaryColor,
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
