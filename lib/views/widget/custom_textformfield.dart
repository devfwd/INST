
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:institute/constants/colors.dart';
import 'package:institute/constants/responsive.dart';
import 'package:institute/routes/app_pages.dart';
import 'package:institute/views/styles/style.dart';

class CustomTextFormField extends StatelessWidget {
  final double? height;
  final double? width;
  final String? iconPath;
  final String? label;
  final String? suffixText;
  final TextInputType keyboardType;
  final Color? filledColor;
  final TextEditingController? controller;
  final String? Function(dynamic value) validator;
  final bool? enabled;
  const CustomTextFormField({
    this.iconPath,
    this.label,
    required this.keyboardType,
    this.controller,
    required this.validator,
    super.key,
     this.height,
     this.width,
    this.filledColor,
    this.suffixText,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: height??45.h,
      width: width??350.w,
      decoration: BoxDecoration(
        color: filledColor ?? Colors.transparent,
        border: Border.all(
          color: AppColor.violet3,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(
          screenWidth < screenHeight ? 36.r : 16.r,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              enabled: enabled,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                prefixIcon: iconPath == null
                    ? null
                    : Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: SvgPicture.asset(
                          iconPath!,
                          fit: BoxFit.scaleDown,
                          colorFilter: const ColorFilter.mode(
                            AppColor.text2Color,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                suffixIcon: getSuffix(context),
                isDense: true,
                hintText: label ?? '',
                hintStyle: Responsive.isDesktop(context)
                    ? AppStyles().subHeading
                    : AppStyles().subHeadingAlt,
                labelStyle: AppStyles().subHeading,
              ),
              validator: validator,
              controller: controller,
              obscureText: keyboardType == TextInputType.visiblePassword,
            ),
          ),
        ],
      ),
    );
  }

  Widget getSuffix(BuildContext context) {
    if (suffixText != null) {
      return InkWell(
        onTap: () {
          // Handle the 'Change Password' functionality here
          Get.toNamed(Routes.changePassword);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 10,
          ),
          child: Text(
            suffixText!,
            style: AppStyles().text.copyWith(fontSize: 16.sp),
          ),
        ),
      );
    } else {
      if (keyboardType == TextInputType.visiblePassword) {
        return GestureDetector(
          onTap: () {
            // Handle visibility toggle
          },
          child: Icon(
            Icons.visibility_outlined,
            color: AppColor.text2Color,
            size: Responsive.isDesktop(context) ? 24 : 18,
          ),
        );
      } else {
        return const SizedBox.shrink();
      }
    }
  }
}
