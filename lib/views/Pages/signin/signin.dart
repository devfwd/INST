

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:institute/constants/colors.dart';
import 'package:institute/views/Pages/signin/widget/section_sign_in.dart';
import 'package:institute/views/widget/logo.dart';

class ScreenSignIn extends StatelessWidget {
   const ScreenSignIn({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      height: 768.h,
      width: 1366.w,
      decoration: const BoxDecoration(
        gradient: AppColor.kBodyGradient,
      ),
      child: Padding(
        padding: EdgeInsets.all(50.r),
        child: Row(
          children: [
            SizedBox(
              height: 668.h,
              width: 706.w,
              child: Center(
                child: Hero(
                  tag: 'logo', // Same tag as in ScreenSplash2
                  child: const DisplayLogo(type: 'L'),
                  flightShuttleBuilder: (
                      flightContext,
                      animation,
                      direction,
                      fromContext,
                      toContext,
                      ) {
                    final Hero toHero = toContext.widget as Hero;
                    return FadeTransition(
                      opacity: animation,
                      child: toHero.child,
                    );
                  },
                ),
              ),
            ),
            const SectionSignIn(),
          ],
        ),
      ),
    ),
    );
  }
}

