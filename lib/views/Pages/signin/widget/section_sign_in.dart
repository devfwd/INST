
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:institute/constants/colors.dart';
import 'package:institute/constants/constant.dart';
import 'package:institute/views/Pages/home/screenhome.dart';
import 'package:institute/views/widget/custom_button.dart';
import 'package:institute/views/widget/custom_textformfield.dart';
import 'package:institute/views/widget/text.dart';

class SectionSignIn extends StatelessWidget {
   const SectionSignIn({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 668.h,
      width: 550.w,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 100.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // heading
            tHead('Sign In to EduPulse',),
            kheight20,
            CustomTextFormField(
              iconPath: 'asset/images/icons/dashboard.svg',
              label: 'Company',
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                return null;
              },
            ),
            kheight20,
            CustomTextFormField(
              iconPath: 'asset/images/icons/un.svg',
              label: 'Username',
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                return null;
              },
            ),
            kheight20,
            Column(
              children: [
                CustomTextFormField(
                  iconPath: 'asset/images/icons/pw.svg',
                  label: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    return null;
                  },
                ),
                kheight20,
              ],
            ),
            kheight20,
            CustomButton(
              width: 350.w,
              buttoncolor: AppColor.violet1,
              buttonContent: 'Sign In',
              // nextPage: const ScreenWelcome(),
              btnfunction: () {
                Get.offAll(
                  () =>  const ScreenHome(),
                  transition: Transition.downToUp,
                  duration: const Duration(milliseconds: 600),
                );
              },
            ),
            kheight20,
            // sign up
            tText(
              'Forgot ? Help',
            ),
          ],
        ),
      ),
    );
  }
}
