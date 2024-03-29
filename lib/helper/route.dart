import 'package:get/get.dart';
import 'package:uikit_tokoonline/helper/constant.dart';
import 'package:uikit_tokoonline/pages/onboarding/onboardingpage.dart';
import 'package:uikit_tokoonline/pages/splashScreen.dart';

List<GetPage> allRouteToko = [
  //uikit Route Toko
  GetPage(
    name: TokoOnlineKit.splash,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: TokoOnlineKit.onboarding,
    page: () => const OnboardingScreen(),
  ),
];
