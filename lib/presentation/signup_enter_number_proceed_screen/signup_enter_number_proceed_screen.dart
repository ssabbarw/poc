import 'bloc/signup_enter_number_proceed_bloc.dart';
import 'models/signup_enter_number_proceed_model.dart';
import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';
import 'package:sachin_s_application1/widgets/custom_button.dart';

class SignupEnterNumberProceedScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SignupEnterNumberProceedBloc>(
        create: (context) => SignupEnterNumberProceedBloc(
            SignupEnterNumberProceedState(
                signupEnterNumberProceedModelObj:
                    SignupEnterNumberProceedModel()))
          ..add(SignupEnterNumberProceedInitialEvent()),
        child: SignupEnterNumberProceedScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupEnterNumberProceedBloc,
        SignupEnterNumberProceedState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 82),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: getHorizontalSize(146),
                            margin: getMargin(left: 16),
                            child: Text("msg_give_us_your_mobile".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyBold20.copyWith(
                                    letterSpacing: getHorizontalSize(0.5)))),
                        Container(
                            width: getHorizontalSize(250),
                            margin: getMargin(left: 16, top: 10),
                            child: Text("msg_for_quick_access".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16.copyWith(
                                    letterSpacing: getHorizontalSize(0.08)))),
                        Container(
                            width: double.maxFinite,
                            child: GestureDetector(
                                onTap: () {
                                  onTapColumnentermobi(context);
                                },
                                child: Container(
                                    width: double.maxFinite,
                                    margin: getMargin(top: 31, bottom: 5),
                                    padding: getPadding(
                                        left: 16,
                                        top: 18,
                                        right: 16,
                                        bottom: 18),
                                    decoration: AppDecoration.outlineGray200,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("msg_enter_mobile_number".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtGilroyMedium12),
                                          Padding(
                                              padding:
                                                  getPadding(top: 5, bottom: 1),
                                              child: Text("lbl_9416541473".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyBold24
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.14))))
                                        ]))))
                      ])),
              bottomNavigationBar: CustomButton(
                  height: getVerticalSize(54),
                  text: "msg_proceed_securely".tr,
                  margin: getMargin(left: 16, right: 16, bottom: 16),
                  padding: ButtonPadding.PaddingT18,
                  fontStyle: ButtonFontStyle.GilroyMedium14,
                  prefixWidget: Container(
                      margin: getMargin(right: 12),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgCalendar)))));
    });
  }

  onTapColumnentermobi(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupOneScreen,
    );
  }
}
