import 'bloc/your_info_skip_bloc.dart';
import 'models/your_info_skip_model.dart';
import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';
import 'package:sachin_s_application1/widgets/custom_button.dart';

class YourInfoSkipScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<YourInfoSkipBloc>(
        create: (context) => YourInfoSkipBloc(
            YourInfoSkipState(yourInfoSkipModelObj: YourInfoSkipModel()))
          ..add(YourInfoSkipInitialEvent()),
        child: YourInfoSkipScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YourInfoSkipBloc, YourInfoSkipState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  height: getVerticalSize(760),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: getPadding(top: 46, bottom: 17),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: getPadding(right: 16),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "msg_have_question_click2"
                                                            .tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .deepPurple300,
                                                        fontSize:
                                                            getFontSize(12),
                                                        fontFamily:
                                                            'Gilroy-Medium',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.2))),
                                                TextSpan(
                                                    text: "lbl_here".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .deepPurple300,
                                                        fontSize:
                                                            getFontSize(12),
                                                        fontFamily:
                                                            'Gilroy-Medium',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.2),
                                                        decoration:
                                                            TextDecoration
                                                                .underline))
                                              ]),
                                              textAlign: TextAlign.left))),
                                  Container(
                                      width: getHorizontalSize(109),
                                      margin: getMargin(left: 16, top: 21),
                                      child: Text("msg_tell_us_little_about".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyBold20
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.5)))),
                                  Container(
                                      width: getHorizontalSize(271),
                                      margin: getMargin(
                                          left: 16, top: 6, right: 72),
                                      child: Text("msg_this_information2".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyMedium16
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.08)))),
                                  Container(
                                      width: double.maxFinite,
                                      child: Container(
                                          width: double.maxFinite,
                                          margin: getMargin(top: 31),
                                          padding: getPadding(
                                              left: 16,
                                              top: 18,
                                              right: 16,
                                              bottom: 18),
                                          decoration:
                                              AppDecoration.outlineGray2001,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Text(
                                                        "msg_enter_your_full2"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium12)),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(children: [
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  30),
                                                          child: VerticalDivider(
                                                              width:
                                                                  getHorizontalSize(
                                                                      2),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      2),
                                                              color: ColorConstant
                                                                  .deepPurpleA400)),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_john".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGilroyBold24Gray300
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.14))))
                                                    ]))
                                              ]))),
                                  Container(
                                      width: double.maxFinite,
                                      child: Container(
                                          width: double.maxFinite,
                                          margin: getMargin(top: 8),
                                          padding: getPadding(
                                              left: 16,
                                              top: 17,
                                              right: 16,
                                              bottom: 17),
                                          decoration:
                                              AppDecoration.outlineGray2001,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 2),
                                                    child: Text(
                                                        "lbl_enter_your_age".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium12)),
                                                Padding(
                                                    padding: getPadding(top: 6),
                                                    child: Text("lbl_eg_18".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyBold24Gray300
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.14))))
                                              ]))),
                                  Spacer(),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          margin:
                                              getMargin(left: 16, right: 16),
                                          padding: getPadding(
                                              left: 128,
                                              top: 16,
                                              right: 128,
                                              bottom: 16),
                                          decoration: AppDecoration
                                              .fillDeeppurpleA400
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder28),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 3),
                                                    child: Text(
                                                        "lbl_continue".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium16WhiteA700
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.5))))
                                              ])))
                                ]))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            decoration: AppDecoration.fillBlack9006c,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Spacer(),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgHshadow,
                                      height: getVerticalSize(3),
                                      width: getHorizontalSize(360)),
                                  Container(
                                      width: double.maxFinite,
                                      child: Container(
                                          padding: getPadding(
                                              left: 16,
                                              top: 19,
                                              right: 16,
                                              bottom: 19),
                                          decoration:
                                              AppDecoration.fillWhiteA700,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    width:
                                                        getHorizontalSize(229),
                                                    margin: getMargin(top: 3),
                                                    child: Text(
                                                        "msg_help_us_understand"
                                                            .tr,
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyBold20
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.5)))),
                                                Container(
                                                    width:
                                                        getHorizontalSize(314),
                                                    margin: getMargin(
                                                        top: 10, right: 13),
                                                    child: Text(
                                                        "msg_allow_auric_for"
                                                            .tr,
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium16
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.08)))),
                                                CustomButton(
                                                    height: getVerticalSize(56),
                                                    text: "msg_yes_personalise"
                                                        .tr,
                                                    margin: getMargin(top: 23),
                                                    onTap: () {
                                                      onTapYespersonalise(
                                                          context);
                                                    }),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          onTapTxtIwilladdthis(
                                                              context);
                                                        },
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 25),
                                                            child: Text(
                                                                "msg_i_will_add_this"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtGilroyMedium14
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.5))))))
                                              ])))
                                ])))
                  ]))));
    });
  }

  onTapYespersonalise(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.yourInfoScreen,
    );
  }

  onTapTxtIwilladdthis(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.verifyAccountScreen,
    );
  }
}
