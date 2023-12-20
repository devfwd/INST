
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:institute/constants/colors.dart';
import 'package:institute/constants/constant.dart';
import 'package:institute/controller/home_controller.dart';
import 'package:institute/views/widget/logo.dart';

class CustomSideBar extends StatelessWidget {
  const CustomSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final HomeController homeController = Get.put(HomeController());
    return GetBuilder<HomeController>(
      builder: (_) {
        // collapsed/expanded size
        return AnimatedContainer(
          color: AppColor.violet3,
          duration: const Duration(milliseconds: 600),
          height: 768.h,
          width: homeController.isSidebarCollapsed.value ? 90.w : 220.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    // logo
                    SizedBox(
                      height:  110.h,
                      child: homeController.isSidebarCollapsed.value
                          ? const DisplayLogo(type: 'V')
                          : const DisplayLogo(type: 'S'),
                    ),
                    // menu items
                    ...List.generate(
                      homeController.listMenu.length,
                      (index) => Obx(
                        () => GestureDetector(
                          child: FittedBox(
                            child: Container(
                              height: 40.h,
                              width: homeController.isSidebarCollapsed.value
                                  ? 50.w
                                  : 200.w,
                              padding: EdgeInsets.symmetric(
                                horizontal:
                                homeController.isSidebarCollapsed.value
                                        ? 0
                                        : screenWidth * 0.025,
                              ),
                              decoration: homeController
                                      .isSidebarCollapsed.value
                                  ? BoxDecoration(
                                      color: homeController
                                                  .selectedIndex.value ==
                                              index
                                          ? AppColor.violet2
                                          : null,
                                      borderRadius: BorderRadius.circular(20.r),
                                    )
                                  : BoxDecoration(
                                      gradient: homeController
                                                  .selectedIndex.value ==
                                              index
                                          ? AppColor.ksideBarGradient
                                          : null,
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                              child: Row(
                                mainAxisAlignment:
                                homeController.isSidebarCollapsed.value
                                        ? MainAxisAlignment.center
                                        : MainAxisAlignment.start,
                                children: [
                                  // icon
                                  SvgPicture.asset(
                                    homeController.listMenu[index]["IMAGE"]!,
                                    colorFilter: ColorFilter.mode(
                                      homeController.selectedIndex.value ==
                                              index
                                          ? AppColor.white
                                          : AppColor.text2Color,
                                      BlendMode.srcIn,
                                    ),
                                    height: 18.h,
                                    width: 18.w,
                                  ),
                                  homeController.isSidebarCollapsed.value
                                      ? const SizedBox()
                                      : kwidth10,
                                  // icon-name
                                  if (!homeController
                                      .isSidebarCollapsed.value)
                                    MouseRegion(
                                      onEnter: (_) => homeController
                                          .hoveredIndex.value = index,
                                      onExit: (_) => homeController
                                          .hoveredIndex.value = -1,
                                      child: Text(
                                        homeController.listMenu[index]["TITLE"]!,
                                        style: TextStyle(
                                          color: homeController
                                                      .selectedIndex.value ==
                                                  index
                                              ? AppColor.white
                                              : homeController
                                                          .hoveredIndex.value ==
                                                      index
                                                  ? AppColor.text1Color
                                                  : AppColor.text2Color,
                                          fontSize: 14.sp,
                                          fontWeight: (homeController
                                                          .selectedIndex
                                                          .value !=
                                                      index &&
                                              homeController
                                                          .hoveredIndex.value ==
                                                      index)
                                              ? FontWeight.w500
                                              : FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            homeController.fnUpdateMenuIndex(index);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              FittedBox(
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        homeController.isSidebarCollapsed.value
                            ? 'asset/images/icons/unfold.svg'
                            : 'asset/images/icons/fold.svg',
                        colorFilter: const ColorFilter.mode(
                          AppColor.text2Color,
                          BlendMode.srcIn,
                        ),
                        height: 18.h,
                        width: 18.w,
                        fit: BoxFit.scaleDown,
                      ),
                    ],
                  ),
                  onTap: () {
                    homeController.toggleSidebar();
                  },
                ),
              ),
              kheight15
            ],
          ),
        );
      },
    );
  }
}
