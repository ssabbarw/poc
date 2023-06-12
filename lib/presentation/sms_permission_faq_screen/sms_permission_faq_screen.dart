import 'bloc/sms_permission_faq_bloc.dart';
import 'models/sms_permission_faq_model.dart';
import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';

class SmsPermissionFaqScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SmsPermissionFaqBloc>(
      create: (context) => SmsPermissionFaqBloc(SmsPermissionFaqState(
        smsPermissionFaqModelObj: SmsPermissionFaqModel(),
      ))
        ..add(SmsPermissionFaqInitialEvent()),
      child: SmsPermissionFaqScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SmsPermissionFaqBloc, SmsPermissionFaqState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                top: 40,
                bottom: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowleft,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    margin: getMargin(
                      left: 16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 32,
                    ),
                    child: Text(
                      "msg_sms_permission_faq".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyBold20.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      8,
                    ),
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 18,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray100,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 18,
                    ),
                    child: Text(
                      "msg_why_does_auric_ask".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroySemibold14.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      316,
                    ),
                    margin: getMargin(
                      left: 16,
                      top: 10,
                      right: 27,
                    ),
                    child: Text(
                      "msg_auric_asks_for_your".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyRegular14.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        top: 16,
                      ),
                      child: Divider(
                        height: getVerticalSize(
                          1,
                        ),
                        thickness: getVerticalSize(
                          1,
                        ),
                        color: ColorConstant.gray200,
                        indent: getHorizontalSize(
                          16,
                        ),
                        endIndent: getHorizontalSize(
                          16,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 17,
                    ),
                    child: Text(
                      "msg_does_auric_read".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroySemibold14.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        321,
                      ),
                      margin: getMargin(
                        left: 16,
                        top: 11,
                        right: 22,
                      ),
                      child: Text(
                        "msg_no_auric_does_not".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyRegular14.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        top: 16,
                      ),
                      child: Divider(
                        height: getVerticalSize(
                          1,
                        ),
                        thickness: getVerticalSize(
                          1,
                        ),
                        color: ColorConstant.gray200,
                        indent: getHorizontalSize(
                          16,
                        ),
                        endIndent: getHorizontalSize(
                          16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      302,
                    ),
                    margin: getMargin(
                      left: 20,
                      top: 16,
                      right: 36,
                    ),
                    child: Text(
                      "msg_can_i_use_auric".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroySemibold14.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      316,
                    ),
                    margin: getMargin(
                      left: 16,
                      top: 9,
                      right: 27,
                      bottom: 5,
                    ),
                    child: Text(
                      "msg_no_you_will_have".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyRegular14.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
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
