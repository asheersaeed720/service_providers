import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueA700 = fromHex('#246bfd');

  static Color gray90099 = fromHex('#9909101d');

  static Color gray900 = fromHex('#212121');

  static Color blueA100 = fromHex('#7ca6fe');

  static Color blueA200 = fromHex('#4f89ff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blue50 = fromHex('#e9f0ff');

  static Color blueA7003f = fromHex('#3f246bfd');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
