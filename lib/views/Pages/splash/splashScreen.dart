import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:institute/constants/colors.dart';
import 'package:institute/controller/splash_controller.dart';
import 'package:institute/views/widget/logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final splashController = Get.find<SplashController>();
    return Scaffold(
      body: GetBuilder<SplashController>(
        init: splashController,
        builder: (_) {
          splashController.init(context);
          return Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: AppColor.kBodyGradient,
            ),
            child: const Hero(
              tag: 'logo',
              child: DisplayLogo(type: 'L'),
            ),
          );
        },
      ),
    );
  }
}

