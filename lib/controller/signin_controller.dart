

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  //======================================= TODO GLOBAL
  //======================================= TODO PAGE VARIABLES
  //======================================= TODO CONTROLLER
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //======================================= TODO FUNCTIONS
  //======================================= TODO API CALLS


}