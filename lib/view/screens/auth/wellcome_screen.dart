import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/view/screens/auth/create_account_screen.dart';
import 'package:wendors_app/view/screens/auth/signin_screen.dart';
import 'package:wendors_app/widgets/Button.dart';

import '../../../routes/routes.dart';

class Wellcomescreen extends StatefulWidget {
  const Wellcomescreen({super.key});

  @override
  State<Wellcomescreen> createState() => _WellcomescreenState();
}

class _WellcomescreenState extends State<Wellcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: Padding(
        padding:  EdgeInsets.only(left: 15, right: 15, ),
        child: Stack(
          children : [
            
            Padding(
              padding: const EdgeInsets.only(left: 190, bottom: 10),
              child: Image.asset('assets/images/OnbardingShadow-img.png', height: Get.height * 0.2,),
            ),


             Padding(
              padding: const EdgeInsets.only(top: 700,),
              child: Image.asset('assets/images/OnbardingShadow-img1.png', height: Get.height * 0.3,),
            ),
            
            Column(          
            children: [
              SizedBox(height:170),
            Image.asset('assets/images/Wellcome-img.png',height: 190),
              SizedBox(height: Get.height * 0.10,),
              Text('WELCOME TO WANDER',style: TextStyles.OnBoardingTitle,),
                SizedBox(height: Get.height * 0.04,),
              Text('Explore the app by Sign In or Create Account.',),
          
              SizedBox(height: Get.height * 0.06,),
          
              Button(onTap: (){
                // Get.toNamed(RouteName.signin);
                Get.to(Signinscreen(),
              
                
                );
              }, title: 'Sign In',),
          
              SizedBox(height: Get.height * 0.04,),
          
              CreateAccountButton(onTap: (){
                //  Get.toNamed(RouteName.createaccount,);
                Get.to(Createaccount(),
                 
                
                );
              }, title: 'Create Account',)
          
          
          ]),
       ] ),
      ),
    );
  }
}