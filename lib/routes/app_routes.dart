import 'package:flutter/material.dart';
import 'package:talenthub/presentation/splash_screen/splash_screen.dart';
import 'package:talenthub/presentation/welcome_screen/welcome_screen.dart';
import 'package:talenthub/presentation/mobile_number_screen/mobile_number_screen.dart';
import 'package:talenthub/presentation/otp_verification_screen/otp_verification_screen.dart';
import 'package:talenthub/presentation/vip_screen/vip_screen.dart';
import 'package:talenthub/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:talenthub/presentation/milk_screen/milk_screen.dart';
import 'package:talenthub/presentation/dahi_screen/dahi_screen.dart';
import 'package:talenthub/presentation/lassi_screen/lassi_screen.dart';
import 'package:talenthub/presentation/product_screen/product_screen.dart';
import 'package:talenthub/presentation/cart_screen/cart_screen.dart';
import 'package:talenthub/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String mobileNumberScreen = '/mobile_number_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String vipScreen = '/vip_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String milkScreen = '/milk_screen';

  static const String dahiScreen = '/dahi_screen';

  static const String lassiScreen = '/lassi_screen';

  static const String productScreen = '/product_screen';

  static const String cartScreen = '/cart_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    mobileNumberScreen: (context) => MobileNumberScreen(),
    otpVerificationScreen: (context) => OtpVerificationScreen(),
    vipScreen: (context) => VipScreen(),
    homeScreenContainerScreen: (context) => HomeScreenContainerScreen(),
    milkScreen: (context) => MilkScreen(),
    dahiScreen: (context) => DahiScreen(),
    lassiScreen: (context) => LassiScreen(),
    productScreen: (context) => ProductScreen(),
    cartScreen: (context) => CartScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
