
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:institute/controller/common/connectivity_controller.dart';
import 'package:institute/controller/home_controller.dart';
import 'package:institute/controller/signin_controller.dart';
import 'package:institute/views/Pages/home/widget/custom_sidebar.dart';
import 'package:institute/views/widget/title_bar.dart';


class SideBarContent extends StatelessWidget {
  final ConnectivityController controller = Get.put(ConnectivityController());
  final SignInController signInController = Get.put(SignInController());
  final HomeController homeController = Get.put(HomeController());

  SideBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1366.w,
      height: 768.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSideBar(),
          Obx(
            (){
              final selectedIndex = homeController.selectedIndex.value;
              return Expanded(child: Column(
                children: [
                  TitleBar(
                    title: homeController.listMenu[selectedIndex]["TITLE"].toString(),
                    controller: controller,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.w,
                        right:20.w,
                        bottom: 20.w,
                      ),
                      child: homeController.contentWidgets[selectedIndex],
                    ),
                  ),
                ],
              ));
            },

          ),
        ],
      ),
    );
  }
}
