

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/Colors.dart';

class TextStyles{

  static TextStyle? get SpalashScreenText => Get.textTheme.headline2?.copyWith(
      fontSize: 45,
      color: ButtonColor,
      fontWeight: FontWeight.bold,
      );

   
   static TextStyle? get OnBoardingTitle => Get.textTheme.headline2?.copyWith(
      fontSize: 28,
      color: RedColor,
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat'
      );

    static TextStyle? get OnboardingParagraph => Get.textTheme.headline2?.copyWith(
      fontSize: 16,
      height: 1.5,
      color: TextColor,
      fontFamily: 'Montserrat-Regular'  
      );

  static TextStyle? get ParagraphStyle => Get.textTheme.headline2?.copyWith(
      fontSize: 18,
      color: TextColor,
      fontFamily: 'Montserrat-Regular'  
      );

  static TextStyle? get ButtonText => Get.textTheme.headline2?.copyWith(
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat-Montserrat'
      ); 
 
  static TextStyle? get CreateAccountButtonText => Get.textTheme.headline2?.copyWith(
      fontSize: 18,
      color: ButtonColor,
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat'
      );     

  static TextStyle? get TitleText => Get.textTheme.headline2?.copyWith(
      fontSize: 20,
       fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat'
      );       


   static TextStyle? get hinttextstyle => Get.textTheme.headline2?.copyWith(
      fontSize: 14,
      color: Colors.black54,
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat-Regular'
      );      

    static TextStyle? get ProfileText => Get.textTheme.headline2?.copyWith(
      fontSize: 25,
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat'
      );  

    static TextStyle? get GmailText => Get.textTheme.headline2?.copyWith(
      fontSize: 14,
      color: Colors.black26,
      fontWeight: FontWeight.normal,
      fontFamily: 'Montserrat'
      );

    static TextStyle? get UserProfileText => Get.textTheme.headline2?.copyWith(
      fontSize: 16,
      color: Colors.black,
      fontFamily: 'Montserrat',fontWeight: FontWeight.w400,
      );  

      static TextStyle? get StoreProfileText => Get.textTheme.headline2?.copyWith(
      fontSize: 13,
      color: Colors.black,
       fontFamily: 'Montserrat',
       fontWeight: FontWeight.w500,
      );   

      static TextStyle? get Categorystyle => Get.textTheme.headline2?.copyWith(
      fontSize: 12,
      color: Colors.black,
       fontFamily: 'Montserrat',
       fontWeight: FontWeight.w400,
      ); 


      static TextStyle? get IntStyle => Get.textTheme.headline2?.copyWith(
      fontSize: 12,
      color: Colors.black,
       fontFamily: 'Montserrat',
       fontWeight: FontWeight.w500,
      );

    static TextStyle? get TabBarButtonText => Get.textTheme.headline2?.copyWith(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat'
      ); 

    static TextStyle? get OrderTextStyle => Get.textTheme.headline2?.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat'
      );   
 }     

