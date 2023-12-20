
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:institute/views/Pages/lead/screenLead.dart';

class HomeController extends GetxController  with GetSingleTickerProviderStateMixin{

  //======================================= TODO GLOBAL
  late final AnimationController sidebarAnimationController;

  //======================================= TODO PAGE VARIABLES
  RxInt selectedIndex = 0.obs;
  RxInt hoveredIndex = 0.obs;
  RxBool isSidebarCollapsed = true.obs;

  var listMenu  = [
    {
      "CODE":"001",
      "TITLE":"Home",
      "IMAGE":'asset/images/icons/dashboard.svg',
    },
    {
      "CODE":"002",
      "TITLE":"Dashboard",
      "IMAGE":'asset/images/icons/dashboard.svg',
    },
    {
      "CODE":"003 ",
      "TITLE":"Master",
      "IMAGE":'asset/images/icons/dashboard.svg',
    },
    {
      "CODE":"004",
      "TITLE":"Student",
      "IMAGE":'asset/images/icons/dashboard.svg',
    },
  ];

  List<Widget> contentWidgets = [
    const ScreenLead(),
    Container(color: Colors.green,),
    Container(color: Colors.blue,),
    Container(color: Colors.yellow,),
    Container(color: Colors.red,),
    Container(color: Colors.red,),
    Container(color: Colors.red,),
    Container(color: Colors.red,),
    Container(color: Colors.red,),
    Container(color: Colors.red,),
  ];

  //======================================= TODO FUNCTION

  @override
  void onInit() {
    super.onInit();
    sidebarAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  void toggleSidebar() {
    isSidebarCollapsed.value = !isSidebarCollapsed.value;
    if (isSidebarCollapsed.value) {
      sidebarAnimationController.reverse();
    } else {
      sidebarAnimationController.forward();
    }
    update();
  }

    void fnUpdateMenuIndex(index){
      selectedIndex.value  =   index;
    }

  //======================================= TODO API CALLS


}