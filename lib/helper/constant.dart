import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TokoOnlineKit {
  static const String splash = '/uikit_tokoonline_splash';
  static const String onboarding = '/uikit_tokoonline_onboarding';
  static const String login = '';
  static const String home = '';
  static const String detail = '';
  static const String cart = '';
  static const String profile = '';
}

Future showToast(
    {required String msg, Color? backgroundColor, Color? textColor}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    fontSize: 16,
    gravity: ToastGravity.CENTER,
    backgroundColor: backgroundColor,
    textColor: textColor ?? Colors.white,
  );
}

class Const {
  static const double margin = 18;
  static const double radius = 12;
  static const double space5 = 5;
  static const double space8 = 8;
  static const double space12 = 12;
  static const double space15 = 15;
  static const double space25 = 25;
}

class Assets {
  static const String logo = 'assets/bellcommerce_logo.png';
}

class Illustrations {
  static const String forgotPassword =
      'assets/illustrations/bellcommerce_forgot_password.svg';
  static const String forgotPasswordSuccess =
      'assets/illustrations/bellcommerce_forgot_password_success.svg';
  static const String onBoarding1 =
      'assets/illustrations/bellcommerce_on_boarding_1.png';
  static const String onBoarding2 =
      'assets/illustrations/bellcommerce_on_boarding_2.png';
  static const String onBoarding3 =
      'assets/illustrations/bellcommerce_on_boarding_3.png';
}
