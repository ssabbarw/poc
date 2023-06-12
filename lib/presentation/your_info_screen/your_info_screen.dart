import 'bloc/your_info_bloc.dart';
import 'models/your_info_model.dart';
import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';

class YourInfoScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<YourInfoBloc>(
        create: (context) =>
            YourInfoBloc(YourInfoState(yourInfoModelObj: YourInfoModel()))
              ..add(YourInfoInitialEvent()),
        child: YourInfoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YourInfoBloc, YourInfoState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 47, bottom: 47),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtSkipthis(context);
                                },
                                child: Padding(
                                    padding: getPadding(right: 16),
                                    child: Text("lbl_skip_this".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium12Deeppurple300
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2),
                                                decoration: TextDecoration
                                                    .underline))))),
                        Container(
                            width: getHorizontalSize(109),
                            margin: getMargin(left: 16, top: 20),
                            child: Text("msg_tell_us_little_about".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyBold20.copyWith(
                                    letterSpacing: getHorizontalSize(0.5)))),
                        Container(
                            width: getHorizontalSize(271),
                            margin: getMargin(left: 16, top: 6, right: 72),
                            child: Text("msg_this_information".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16.copyWith(
                                    letterSpacing: getHorizontalSize(0.08)))),
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                width: double.maxFinite,
                                margin: getMargin(top: 31),
                                padding: getPadding(
                                    left: 16, top: 18, right: 16, bottom: 18),
                                decoration: AppDecoration.outlineGray2001,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("msg_enter_your_full".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtGilroyMedium12)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Row(children: [
                                            SizedBox(
                                                height: getVerticalSize(30),
                                                child: VerticalDivider(
                                                    width: getHorizontalSize(2),
                                                    thickness:
                                                        getVerticalSize(2),
                                                    color: ColorConstant
                                                        .deepPurpleA400)),
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Text("lbl_john".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
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
                                margin: getMargin(top: 8, bottom: 5),
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.outlineGray2001,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("lbl_enter_your_age".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtGilroyMedium12)),
                                      Padding(
                                          padding: getPadding(top: 6),
                                          child: Text("lbl_eg_18".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyBold24Gray300
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.14))))
                                    ])))
                      ]))));
    });
  }

  onTapTxtSkipthis(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.yourInfoSkipScreen,
    );
  }
}
