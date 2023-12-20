import 'package:flutter/material.dart';

class AppColor {
  static const violet1 = Color(0xFF5038ED);
  static const violet2 = Color(0xFF9181F4);
  static const violet3 = Color(0xFFEEEBFF);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF1E1E1E);
  static const orange = Color(0xFFF98600);
  static const text1Color = Color(0xFF112650);
  static const text2Color = Color(0xFF5F6E8C);

  static const kBodyGradient = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [
      Color(0xFF9181F4),
      Color(0xFF5038ED),
    ],
  );

  static const ksideBarGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF9181F4), // #9181F4
      Color(0xFFEEEBFF), // #EEEBFF
    ],
  );
}
