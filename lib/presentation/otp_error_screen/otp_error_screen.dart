import 'bloc/otp_error_bloc.dart';
import 'models/otp_error_model.dart';
import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';
import 'package:sachin_s_application1/widgets/custom_button.dart';

class OtpErrorScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OtpErrorBloc>(
        create: (context) =>
            OtpErrorBloc(OtpErrorState(otpErrorModelObj: OtpErrorModel()))
              ..add(OtpErrorInitialEvent()),
        child: OtpErrorScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpErrorBloc, OtpErrorState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 23, bottom: 23),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowleft,
                            height: getSize(24),
                            width: getSize(24),
                            margin: getMargin(left: 16, top: 17)),
                        Container(
                            width: getHorizontalSize(172),
                            margin: getMargin(left: 16, top: 18),
                            child: Text("msg_verify_with_secure_code".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyBold20.copyWith(
                                    letterSpacing: getHorizontalSize(0.5)))),
                        Container(
                            width: getHorizontalSize(263),
                            margin: getMargin(left: 16, top: 10, right: 80),
                            child: Text("msg_waitng_to_automatically".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16.copyWith(
                                    letterSpacing: getHorizontalSize(0.08)))),
                        Padding(
                            padding: getPadding(left: 16, top: 9),
                            child: Text("lbl_91_9416541473".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyBold20.copyWith(
                                    letterSpacing: getHorizontalSize(0.5)))),
                        CustomButton(
                            height: getVerticalSize(88),
                            text: "lbl_193823".tr,
                            margin: getMargin(top: 35),
                            variant: ButtonVariant.OutlineDeeporange50,
                            shape: ButtonShape.Square,
                            padding: ButtonPadding.PaddingT31,
                            fontStyle: ButtonFontStyle.GilroyBold22Red500),
                        CustomButton(
                            height: getVerticalSize(42),
                            text: "lbl_invalid_otp".tr,
                            variant: ButtonVariant.FillRed500,
                            shape: ButtonShape.Square,
                            padding: ButtonPadding.PaddingAll13,
                            fontStyle: ButtonFontStyle.GilroyMedium12),
                        Spacer(),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(left: 16, right: 15),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("msg_didn_t_get_an_otp".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyMedium16
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.16))),
                                      Padding(
                                          padding: getPadding(bottom: 1),
                                          child: Text("msg_resend_otp_1_59s".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtGilroyBold14
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.28))))
                                    ]))),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    getPadding(left: 16, top: 21, right: 16),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(bottom: 2),
                                          child: Text("lbl_not_your_number".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtGilroyMedium16
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.16)))),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_change".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyBold14
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.07))),
                                                Padding(
                                                    padding: getPadding(top: 2),
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                53),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .deepPurpleA400)))
                                              ]))
                                    ])))
                      ])),
              bottomNavigationBar: CustomButton(
                  height: getVerticalSize(56),
                  text: "lbl_verify_otp".tr,
                  margin: getMargin(left: 16, right: 16, bottom: 16),
                  onTap: () {
                    onTapVerifyotp(context);
                  })));
    });
  }

  onTapVerifyotp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.yourInfoScreen,
    );
  }
}
