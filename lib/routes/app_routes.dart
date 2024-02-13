import 'package:flutter/material.dart';
import 'package:tachin_s_application3/presentation/log_in_screen/log_in_screen.dart';
import 'package:tachin_s_application3/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:tachin_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    logInScreen: (context) => LogInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
