import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uikit_tokoonline/helper/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(
          milliseconds: 1500,
        ), () {
      Get.offAllNamed(TokoOnlineKit.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Adipramana Dev',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
