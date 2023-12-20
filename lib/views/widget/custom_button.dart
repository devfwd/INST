
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:institute/constants/colors.dart';
import 'package:institute/views/styles/style.dart';

class CustomButton extends StatelessWidget {
  final String? iconPath;
  final String buttonContent;
  final double width;
  final Color buttoncolor;
  final dynamic nextPage;
  final dynamic btnfunction;
  const CustomButton({
    super.key,
    required this.buttonContent,
    required this.width,
    required this.buttoncolor,
    this.iconPath,
    this.nextPage,
    this.btnfunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25.r),
        ),
        color: buttoncolor,
      ),
      child: InkWell(
        hoverColor: Colors.transparent,
        onTap: () {
          nextPage != null ? Get.to(nextPage) : btnfunction?.call();
        },
        child: Center(
          child: FittedBox(
            child: Text(
              buttonContent,
              style: AppStyles().subHeading.copyWith(color: AppColor.white),
            ),
          ),
        ),
      ),
    );
  }
}
