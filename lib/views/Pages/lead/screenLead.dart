

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:institute/views/widget/pagemenu.dart';

class ScreenLead extends StatelessWidget {
  const ScreenLead ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
            flex: 7,
            child:  Column(
              children: [
                Row(),
                PageMenu( pPageMode: 'ADD',),
              ],
            )),
        Container(width: 250.w, color: Colors.red,),
      ],
    );
  }
}
