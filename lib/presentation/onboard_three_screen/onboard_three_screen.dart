import 'bloc/onboard_three_bloc.dart';
import 'models/onboard_three_model.dart';
import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';
import 'package:sachin_s_application1/widgets/custom_button.dart';

class OnboardThreeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardThreeBloc>(
        create: (context) => OnboardThreeBloc(
            OnboardThreeState(onboardThreeModelObj: OnboardThreeModel()))
          ..add(OnboardThreeInitialEvent()),
        child: OnboardThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardThreeBloc, OnboardThreeState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 4, top: 17, right: 4, bottom: 17),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgFrame11625DeepPurpleA400,
                            height: getVerticalSize(4),
                            width: getHorizontalSize(352),
                            margin: getMargin(top: 22)),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: getVerticalSize(354),
                                width: getHorizontalSize(328),
                                margin: getMargin(top: 32),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(24)),
                                    gradient: LinearGradient(
                                        begin: Alignment(0, 0),
                                        end: Alignment(0.27, 0.44),
                                        colors: [
                                          ColorConstant.deepPurpleA400,
                                          ColorConstant.whiteA70000,
                                          ColorConstant.whiteA70000
                                        ])))),
                        Container(
                            width: getHorizontalSize(295),
                            margin: getMargin(left: 12, top: 40, right: 44),
                            child: Text("msg_auric_guarantees".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyBold24.copyWith(
                                    letterSpacing: getHorizontalSize(0.2)))),
                        Padding(
                            padding: getPadding(left: 12, top: 25, right: 85),
                            child: Row(children: [
                              Container(
                                  height: getVerticalSize(12),
                                  width: getHorizontalSize(88),
                                  margin: getMargin(top: 1, bottom: 1),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(12),
                                                width: getHorizontalSize(88),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                6)),
                                                    child:
                                                        LinearProgressIndicator(
                                                            value: 0.68)))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(12),
                                                width: getHorizontalSize(88),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                6)),
                                                    child: LinearProgressIndicator(
                                                        value: 0.36,
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                    Color>(
                                                                ColorConstant
                                                                    .black900)))))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 8),
                                  child: Text("msg_trusted_by_5_lakh".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyMedium12Black900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.2))))
                            ]))
                      ])),
              bottomNavigationBar: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: double.maxFinite,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgLeftcut,
                                  height: getVerticalSize(3),
                                  width: getHorizontalSize(4)),
                              Expanded(
                                  child: Divider(
                                      height: getVerticalSize(3),
                                      thickness: getVerticalSize(3),
                                      color: ColorConstant.deepPurple50)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgRightcut,
                                  height: getVerticalSize(3),
                                  width: getHorizontalSize(4))
                            ])),
                    Container(
                        width: double.maxFinite,
                        child: Container(
                            padding: getPadding(
                                left: 16, top: 17, right: 16, bottom: 17),
                            decoration: AppDecoration.fillDeeppurpleA400,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomButton(
                                      text: "lbl_get_started".tr,
                                      margin: getMargin(top: 6),
                                      shape: ButtonShape.Square,
                                      padding: ButtonPadding.PaddingT1,
                                      fontStyle:
                                          ButtonFontStyle.GilroySemibold16,
                                      suffixWidget: Container(
                                          margin: getMargin(left: 30),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgThinarrowright)),
                                      onTap: () {
                                        onTapGetstarted(context);
                                      }),
                                  Padding(
                                      padding: getPadding(top: 24),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.whiteA70075)),
                                  Padding(
                                      padding: getPadding(top: 16),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "msg_by_connecting_i2".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Gilroy-Medium',
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2))),
                                            TextSpan(
                                                text: "msg_terms_of_service".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Gilroy-Medium',
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing:
                                                        getHorizontalSize(0.2),
                                                    decoration: TextDecoration
                                                        .underline))
                                          ]),
                                          textAlign: TextAlign.left))
                                ])))
                  ])));
    });
  }

  onTapGetstarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupEnterNumberScreen,
    );
  }
}
