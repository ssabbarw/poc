import 'bloc/signup_phone_error_bloc.dart';
import 'models/signup_phone_error_model.dart';
import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';
import 'package:sachin_s_application1/widgets/custom_button.dart';

class SignupPhoneErrorScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SignupPhoneErrorBloc>(
        create: (context) => SignupPhoneErrorBloc(SignupPhoneErrorState(
            signupPhoneErrorModelObj: SignupPhoneErrorModel()))
          ..add(SignupPhoneErrorInitialEvent()),
        child: SignupPhoneErrorScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupPhoneErrorBloc, SignupPhoneErrorState>(
        builder: (context, state) {
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
                                    margin: getMargin(top: 31),
                                    padding: getPadding(
                                        left: 16,
                                        top: 18,
                                        right: 16,
                                        bottom: 18),
                                    decoration:
                                        AppDecoration.outlineDeeporange50,
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
                                              child: Text("lbl_9999999999".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyBold24Red500
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.14))))
                                        ])))),
                        CustomButton(
                            height: getVerticalSize(42),
                            text: "msg_doesn_t_look_like".tr,
                            margin: getMargin(bottom: 5),
                            variant: ButtonVariant.FillRed500,
                            shape: ButtonShape.Square,
                            padding: ButtonPadding.PaddingAll13,
                            fontStyle: ButtonFontStyle.GilroyMedium12)
                      ]))));
    });
  }

  onTapColumnentermobi(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupOneScreen,
    );
  }
}
