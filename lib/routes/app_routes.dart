import 'package:flutter/material.dart';
import 'package:sachin_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:sachin_s_application1/presentation/sms_permission_faq_screen/sms_permission_faq_screen.dart';
import 'package:sachin_s_application1/presentation/signup_enter_number_proceed_screen/signup_enter_number_proceed_screen.dart';
import 'package:sachin_s_application1/presentation/onboard_one_screen/onboard_one_screen.dart';
import 'package:sachin_s_application1/presentation/onboard_two_screen/onboard_two_screen.dart';
import 'package:sachin_s_application1/presentation/onboard_three_screen/onboard_three_screen.dart';
import 'package:sachin_s_application1/presentation/signup_enter_number_screen/signup_enter_number_screen.dart';
import 'package:sachin_s_application1/presentation/enter_otp_screen/enter_otp_screen.dart';
import 'package:sachin_s_application1/presentation/your_info_screen/your_info_screen.dart';
import 'package:sachin_s_application1/presentation/login_permission_screen/login_permission_screen.dart';
import 'package:sachin_s_application1/presentation/verify_account_screen/verify_account_screen.dart';
import 'package:sachin_s_application1/presentation/login_permission_popup_screen/login_permission_popup_screen.dart';
import 'package:sachin_s_application1/presentation/signup_phone_error_screen/signup_phone_error_screen.dart';
import 'package:sachin_s_application1/presentation/otp_error_screen/otp_error_screen.dart';
import 'package:sachin_s_application1/presentation/your_info_skip_screen/your_info_skip_screen.dart';
import 'package:sachin_s_application1/presentation/login_permission_error_screen/login_permission_error_screen.dart';
import 'package:sachin_s_application1/presentation/signup_one_screen/signup_one_screen.dart';
import 'package:sachin_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String smsPermissionFaqScreen = '/sms_permission_faq_screen';

  static const String signupEnterNumberProceedScreen =
      '/signup_enter_number_proceed_screen';

  static const String onboardOneScreen = '/onboard_one_screen';

  static const String onboardTwoScreen = '/onboard_two_screen';

  static const String onboardThreeScreen = '/onboard_three_screen';

  static const String signupEnterNumberScreen = '/signup_enter_number_screen';

  static const String enterOtpScreen = '/enter_otp_screen';

  static const String yourInfoScreen = '/your_info_screen';

  static const String loginPermissionScreen = '/login_permission_screen';

  static const String verifyAccountScreen = '/verify_account_screen';

  static const String loginPermissionPopupScreen =
      '/login_permission_popup_screen';

  static const String signupPhoneErrorScreen = '/signup_phone_error_screen';

  static const String otpErrorScreen = '/otp_error_screen';

  static const String yourInfoSkipScreen = '/your_info_skip_screen';

  static const String loginPermissionErrorScreen =
      '/login_permission_error_screen';

  static const String signupOneScreen = '/signup_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        smsPermissionFaqScreen: SmsPermissionFaqScreen.builder,
        signupEnterNumberProceedScreen: SignupEnterNumberProceedScreen.builder,
        onboardOneScreen: OnboardOneScreen.builder,
        onboardTwoScreen: OnboardTwoScreen.builder,
        onboardThreeScreen: OnboardThreeScreen.builder,
        signupEnterNumberScreen: SignupEnterNumberScreen.builder,
        enterOtpScreen: EnterOtpScreen.builder,
        yourInfoScreen: YourInfoScreen.builder,
        loginPermissionScreen: LoginPermissionScreen.builder,
        verifyAccountScreen: VerifyAccountScreen.builder,
        loginPermissionPopupScreen: LoginPermissionPopupScreen.builder,
        signupPhoneErrorScreen: SignupPhoneErrorScreen.builder,
        otpErrorScreen: OtpErrorScreen.builder,
        yourInfoSkipScreen: YourInfoSkipScreen.builder,
        loginPermissionErrorScreen: LoginPermissionErrorScreen.builder,
        signupOneScreen: SignupOneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
