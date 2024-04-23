import 'dart:async';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:wendors_app/routes/routes.dart';
import 'package:wendors_app/view/screens/auth/OnBoarding%20Screen/OnBoarding_Screen.dart';
class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 3), () {
      navigateToOnboardingScreen();
    });
  }

  void navigateToOnboardingScreen() {
  
  Get.to(Onlineshoppingscreen(),
  );
  
  // Get.toNamed(RouteName.onboardingscreen);
                    
                              
  }
}

