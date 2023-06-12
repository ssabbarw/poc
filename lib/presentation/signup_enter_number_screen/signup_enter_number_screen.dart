import 'bloc/signup_enter_number_bloc.dart';
import 'models/signup_enter_number_model.dart';
import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';

class SignupEnterNumberScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SignupEnterNumberBloc>(
        create: (context) => SignupEnterNumberBloc(SignupEnterNumberState(
            signupEnterNumberModelObj: SignupEnterNumberModel()))
          ..add(SignupEnterNumberInitialEvent()),
        child: SignupEnterNumberScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupEnterNumberBloc, SignupEnterNumberState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: getHorizontalSize(146),
                            margin: getMargin(left: 16, top: 82),
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
                                    decoration: AppDecoration.outlineGray200,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("msg_enter_mobile_number".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtGilroyMedium12),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Row(children: [
                                                SizedBox(
                                                    height: getVerticalSize(31),
                                                    child: VerticalDivider(
                                                        width:
                                                            getHorizontalSize(
                                                                2),
                                                        thickness:
                                                            getVerticalSize(2),
                                                        color: ColorConstant
                                                            .deepPurpleA400,
                                                        indent:
                                                            getHorizontalSize(
                                                                1))),
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 2),
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
                                                                        0.14))))
                                              ]))
                                        ])))),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage45,
                            height: getVerticalSize(255),
                            width: getHorizontalSize(360))
                      ]))));
    });
  }

  onTapColumnentermobi(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupOneScreen,
    );
  }
}
