import 'bloc/signup_one_bloc.dart';
import 'models/signup_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';
import 'package:sachin_s_application1/widgets/custom_button.dart';

class SignupOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SignupOneBloc>(
        create: (context) =>
            SignupOneBloc(SignupOneState(signupOneModelObj: SignupOneModel()))
              ..add(SignupOneInitialEvent()),
        child: SignupOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupOneBloc, SignupOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  height: getVerticalSize(688),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            margin: getMargin(top: 220),
                            padding: getPadding(
                                left: 16, top: 18, right: 16, bottom: 18),
                            decoration: AppDecoration.outlineGray200,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("msg_enter_mobile_number".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyMedium12),
                                  Padding(
                                      padding: getPadding(top: 5),
                                      child: Row(children: [
                                        SizedBox(
                                            height: getVerticalSize(31),
                                            child: VerticalDivider(
                                                width: getHorizontalSize(2),
                                                thickness: getVerticalSize(2),
                                                color: ColorConstant
                                                    .deepPurpleA400,
                                                indent: getHorizontalSize(1))),
                                        Container(
                                            height: getVerticalSize(29),
                                            width: getHorizontalSize(134),
                                            margin: getMargin(bottom: 2),
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                          "lbl_9999999999".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtGilroyBold24Bluegray100
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.14)))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCarretdown,
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      margin:
                                                          getMargin(left: 38))
                                                ]))
                                      ]))
                                ]))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: getPadding(left: 18, top: 82),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: getHorizontalSize(146),
                                      child: Text("msg_give_us_your_mobile".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyBold20
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.5)))),
                                  Container(
                                      width: getHorizontalSize(250),
                                      margin: getMargin(top: 10),
                                      child: Text("msg_for_quick_access2".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyMedium16
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.08))))
                                ]))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: getVerticalSize(760),
                            width: double.maxFinite,
                            padding: getPadding(
                                left: 34, top: 242, right: 34, bottom: 242),
                            decoration: AppDecoration.fillBlack9006c,
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage43,
                                  height: getVerticalSize(269),
                                  width: getHorizontalSize(292),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(17)),
                                  alignment: Alignment.center,
                                  onTap: () {
                                    onTapImgImagefortythree(context);
                                  }),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                      height: getVerticalSize(27),
                                      width: getHorizontalSize(74),
                                      margin: getMargin(left: 80, top: 15),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700)))
                            ])))
                  ])),
              bottomNavigationBar: CustomButton(
                  height: getVerticalSize(54),
                  text: "msg_proceed_securely".tr,
                  margin: getMargin(left: 18, right: 18, bottom: 18),
                  padding: ButtonPadding.PaddingT18,
                  fontStyle: ButtonFontStyle.GilroyMedium14,
                  prefixWidget: Container(
                      margin: getMargin(right: 12),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgCalendar)))));
    });
  }

  onTapImgImagefortythree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.enterOtpScreen,
    );
  }
}
