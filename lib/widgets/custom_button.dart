import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT18:
        return getPadding(
          top: 18,
          right: 18,
          bottom: 18,
        );
      case ButtonPadding.PaddingT1:
        return getPadding(
          top: 1,
          bottom: 1,
        );
      case ButtonPadding.PaddingT31:
        return getPadding(
          left: 30,
          top: 31,
          right: 31,
          bottom: 31,
        );
      case ButtonPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      default:
        return getPadding(
          all: 18,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineGray200:
        return ColorConstant.gray100;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillRed500:
        return ColorConstant.red500;
      case ButtonVariant.OutlineDeeporange50:
        return ColorConstant.gray100;
      default:
        return ColorConstant.deepPurpleA400;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray200:
        return BorderSide(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineDeeporange50:
        return BorderSide(
          color: ColorConstant.deepOrange50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillDeeppurpleA400:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillRed500:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.GilroyMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.GilroySemibold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.GilroyBold22:
        return TextStyle(
          color: ColorConstant.blueGray100,
          fontSize: getFontSize(
            22,
          ),
          fontFamily: 'Gilroy-Bold',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.GilroyMedium16Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.GilroyMedium12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.GilroyBold22Red500:
        return TextStyle(
          color: ColorConstant.red500,
          fontSize: getFontSize(
            22,
          ),
          fontFamily: 'Gilroy-Bold',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder27,
}

enum ButtonPadding {
  PaddingAll18,
  PaddingT18,
  PaddingT1,
  PaddingT31,
  PaddingAll13,
}

enum ButtonVariant {
  FillDeeppurpleA400,
  OutlineGray200,
  FillWhiteA700,
  FillRed500,
  OutlineDeeporange50,
}

enum ButtonFontStyle {
  GilroyMedium16,
  GilroyMedium14,
  GilroySemibold16,
  GilroyBold22,
  GilroyMedium16Black900,
  GilroyMedium12,
  GilroyBold22Red500,
}
