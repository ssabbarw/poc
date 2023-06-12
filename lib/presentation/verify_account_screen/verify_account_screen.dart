import 'bloc/verify_account_bloc.dart';
import 'models/verify_account_model.dart';
import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';
import 'package:sachin_s_application1/widgets/custom_button.dart';

class VerifyAccountScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<VerifyAccountBloc>(
        create: (context) => VerifyAccountBloc(
            VerifyAccountState(verifyAccountModelObj: VerifyAccountModel()))
          ..add(VerifyAccountInitialEvent()),
        child: VerifyAccountScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyAccountBloc, VerifyAccountState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.deepPurpleA400,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 16, right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: getHorizontalSize(231),
                            margin: getMargin(right: 97),
                            child: Text("msg_yup_that_s_definitely_you".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyHeavy44.copyWith(
                                    letterSpacing: getHorizontalSize(0.2)))),
                        Padding(
                            padding: getPadding(top: 14, bottom: 5),
                            child: Text("msg_you_re_all_signed".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyHeavy18.copyWith(
                                    letterSpacing: getHorizontalSize(0.2))))
                      ])),
              bottomNavigationBar: CustomButton(
                  height: getVerticalSize(56),
                  text: "lbl_take_me_home".tr,
                  margin: getMargin(left: 16, right: 16, bottom: 17),
                  variant: ButtonVariant.FillWhiteA700,
                  fontStyle: ButtonFontStyle.GilroyMedium16Black900,
                  onTap: () {
                    onTapTakemehome(context);
                  })));
    });
  }

  onTapTakemehome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPermissionScreen,
    );
  }
}
