import 'bloc/login_permission_popup_bloc.dart';
import 'models/login_permission_popup_model.dart';
import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';
import 'package:sachin_s_application1/widgets/custom_button.dart';

class LoginPermissionPopupScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPermissionPopupBloc>(
      create: (context) => LoginPermissionPopupBloc(LoginPermissionPopupState(
        loginPermissionPopupModelObj: LoginPermissionPopupModel(),
      ))
        ..add(LoginPermissionPopupInitialEvent()),
      child: LoginPermissionPopupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginPermissionPopupBloc, LoginPermissionPopupState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
              height: getVerticalSize(
                760,
              ),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 46,
                        right: 16,
                        bottom: 16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_have_question_click2".tr,
                                    style: TextStyle(
                                      color: ColorConstant.deepPurple300,
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: getHorizontalSize(
                                        0.2,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "lbl_here".tr,
                                    style: TextStyle(
                                      color: ColorConstant.deepPurple300,
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: getHorizontalSize(
                                        0.2,
                                      ),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              212,
                            ),
                            margin: getMargin(
                              top: 21,
                            ),
                            child: Text(
                              "msg_we_take_the_fol".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyBold20.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.5,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 31,
                              right: 7,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgPhonechatmessage,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                  margin: getMargin(
                                    bottom: 59,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 12,
                                    top: 1,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                            ),
                                            child: Text(
                                              "lbl_sms_permission".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemibold14Black900
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.2,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              80,
                                            ),
                                            margin: getMargin(
                                              left: 12,
                                            ),
                                            padding: getPadding(
                                              left: 6,
                                              top: 3,
                                              right: 6,
                                              bottom: 3,
                                            ),
                                            decoration: AppDecoration
                                                .txtFillDeeppurpleA400
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtRoundedBorder4,
                                            ),
                                            child: Text(
                                              "lbl_mandatory".tr.toUpperCase(),
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroySemibold10
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  1.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          284,
                                        ),
                                        margin: getMargin(
                                          top: 9,
                                        ),
                                        child: Text(
                                          "msg_we_need_this_permission".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyMedium12
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          CustomButton(
                            height: getVerticalSize(
                              56,
                            ),
                            text: "lbl_yes_allow".tr,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: getPadding(
                        left: 40,
                        top: 298,
                        right: 40,
                        bottom: 298,
                      ),
                      decoration: AppDecoration.fillBlack9006c,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage44,
                            height: getVerticalSize(
                              162,
                            ),
                            width: getHorizontalSize(
                              278,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
