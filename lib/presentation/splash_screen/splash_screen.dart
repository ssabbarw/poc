import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:sachin_s_application1/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              backgroundColor: ColorConstant.deepPurpleA400,
              body: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      color: ColorConstant.deepPurpleA400,
                      gradient: LinearGradient(
                          begin: Alignment(0.72, 0),
                          end: Alignment(0.58, 0.81),
                          colors: [
                            ColorConstant.deepPurple700,
                            ColorConstant.deepPurple70000
                          ])),
                  child: Container(
                      width: double.maxFinite,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup6,
                                height: getVerticalSize(57),
                                width: getHorizontalSize(92))
                          ])))));
    });
  }
}
