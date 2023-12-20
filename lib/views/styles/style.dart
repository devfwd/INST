
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:institute/constants/colors.dart';


class AppStyles {

  //======================================TODO TEXT STYLE
  final heading = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 26.sp,
    color: AppColor.text1Color,
  );

  final medium = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColor.text1Color,
  );

  final subHeading = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColor.text2Color,
  );

  final text = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColor.text2Color,
  );

  final textWhite = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColor.white,
  );

  // screenWidth<screenHeight
  final headingAlt = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColor.text1Color,
  );

  final subHeadingAlt = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColor.text2Color,
    fontStyle: FontStyle.normal,
  );

  final mediumAlt = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 34,
    color: AppColor.text1Color,
  );

  final textAlt = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 10,
    color: AppColor.text2Color,
  );


//======================================TODO BOX DECORATIONS

  BoxDecoration boxDecoration(color,radius) => BoxDecoration(
    color: color,
    boxShadow: const [
      BoxShadow(
        color: AppColor.black,
        offset: Offset(
          5.0,0.0,
        ),
        blurRadius: 30.0,
        spreadRadius: 1.0,
      )
    ],
    borderRadius: BorderRadius.circular(radius),
  );

  BoxDecoration boxDecorationBase(color,radius) => BoxDecoration(
    color: color,

    borderRadius: BorderRadius.circular(radius),
  );

}
