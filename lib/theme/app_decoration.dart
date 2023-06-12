import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineGray200 => BoxDecoration(
        color: ColorConstant.gray100,
        border: Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillBlack9006c => BoxDecoration(
        color: ColorConstant.black9006c,
      );
  static BoxDecoration get outlineGray2001 => BoxDecoration(
        color: ColorConstant.gray50,
        border: Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtFillDeeppurpleA400 => BoxDecoration(
        color: ColorConstant.deepPurpleA400,
      );
  static BoxDecoration get fillDeeppurpleA400 => BoxDecoration(
        color: ColorConstant.deepPurpleA400,
      );
  static BoxDecoration get gradientDeeppurple700Deeppurple70000 =>
      BoxDecoration(
        color: ColorConstant.deepPurpleA400,
        gradient: LinearGradient(
          begin: Alignment(
            0.72,
            0,
          ),
          end: Alignment(
            0.58,
            0.81,
          ),
          colors: [
            ColorConstant.deepPurple700,
            ColorConstant.deepPurple70000,
          ],
        ),
      );
  static BoxDecoration get outlineDeeporange50 => BoxDecoration(
        color: ColorConstant.gray100,
        border: Border.all(
          color: ColorConstant.deepOrange50,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillRed500 => BoxDecoration(
        color: ColorConstant.red500,
      );
  static BoxDecoration get outline => BoxDecoration();
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder17 = BorderRadius.circular(
    getHorizontalSize(
      17,
    ),
  );

  static BorderRadius circleBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6,
    ),
  );

  static BorderRadius circleBorder28 = BorderRadius.circular(
    getHorizontalSize(
      28,
    ),
  );

  static BorderRadius txtRoundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
