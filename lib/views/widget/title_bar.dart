
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:institute/views/widget/text.dart';

class TitleBar extends StatelessWidget {
  final String title;
  final dynamic controller;
  const TitleBar({
    super.key,
    required this.title,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    //double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(12.h
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FittedBox(
            child: Row(
              children: [
                tHead(
                    title
                ),
              ],
            ),
          ),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: screenWidth * 0.015),
                FittedBox(
                  child: InkWell(
                    child: CircleAvatar(
                      radius:20,
                      child: Image.asset('asset/images/profile.png'),
                    ),
                    //onTap: () => Get.to(const ScreenWelcome()),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
