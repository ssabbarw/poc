import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color deepOrange50 = fromHex('#fce2dd');

  static Color blueGray100 = fromHex('#d2d2d2');

  static Color blueGray400 = fromHex('#8a8a8a');

  static Color black9006c = fromHex('#6c0d0d0d');

  static Color gray900 = fromHex('#161616');

  static Color deepPurple70000 = fromHex('#004a25b3');

  static Color deepPurple700 = fromHex('#4a25b3');

  static Color red500 = fromHex('#ee4d37');

  static Color gray200 = fromHex('#efefef');

  static Color gray300 = fromHex('#e0e0e0');

  static Color deepPurple300 = fromHex('#995be3');

  static Color gray50 = fromHex('#fbfbfb');

  static Color gray100 = fromHex('#f1f3f7');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color deepPurple50 = fromHex('#e8dfff');

  static Color black90001 = fromHex('#000000');

  static Color whiteA70075 = fromHex('#75ffffff');

  static Color black900 = fromHex('#0d0d0d');

  static Color deepPurpleA400 = fromHex('#6a35ff');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blueGray40000 = fromHex('#008a8a8a');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
