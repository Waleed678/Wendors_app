import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/routes/routes.dart';
import 'package:wendors_app/view/screens/auth/SplashScreen_controller.dart';

class Spalashscreen extends StatelessWidget {
   Spalashscreen({super.key});

  final SplashScreenController controller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          GestureDetector(
            // onTap: (){
            //   Get.toNamed(RouteName.onboardingscreen);
            //   // Get.to(OnboardingScreen());
            // },
            child: Image.asset('assets/images/Splash-img.png',height: Get.height * 0.2,))
        ]),
      ),
    );
  }
}