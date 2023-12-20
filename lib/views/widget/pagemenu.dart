
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:institute/constants/colors.dart';
import 'package:institute/controller/common/pagemenu_controller.dart';
import 'package:institute/views/styles/style.dart';
import 'package:institute/views/widget/text.dart';

class PageMenu extends StatelessWidget {
  final  String pPageMode ;
  const PageMenu({Key? key, required this.pPageMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final PageMenuController pageMenuController = Get.put(PageMenuController());

    return GetBuilder<PageMenuController>(builder: (_){
      return Container(
        color: Colors.white,
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            ...List.generate(
                pageMenuController.listMenu.length,
                    (index) => Container(
                      decoration: AppStyles().boxDecorationBase(AppColor.violet1, 5.0),
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                      margin: const EdgeInsets.only(left: 5),
                      child: tTextButton((pageMenuController.listMenu[index]["CODE"]).toString()),
                    )
            )
          ],
        )
      );
    });
  }
}
