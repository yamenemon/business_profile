import 'package:business_profile/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerBaseTopView extends StatelessWidget {
  const ContainerBaseTopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.w,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 3, color: secondaryColor),
          left: BorderSide(width: 3, color: secondaryColor),
        ),
      ),
    );
  }
}
