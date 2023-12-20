

import 'package:flutter/material.dart';
import 'package:institute/constants/colors.dart';
import 'package:institute/views/Pages/home/widget/sidebar_content.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.white,
      body:  SideBarContent(),
    );
  }
}

