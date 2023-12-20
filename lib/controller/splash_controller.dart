
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:institute/views/Pages/signin/signin.dart';

class SplashController extends GetxController {

  void init(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 3000),
              pageBuilder: (_, __, ___) => const ScreenSignIn(),
              transitionsBuilder: (_, animation, __, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
