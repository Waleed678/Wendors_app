import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/view/screens/auth/change_container_color_controlller.dart';
import 'package:wendors_app/view/screens/auth/create_account_screen.dart';
import 'package:wendors_app/view/screens/auth/wellcome_screen.dart';

import '../../../core/utils/style.dart';
import '../../../routes/routes.dart';
import '../../../widgets/Button.dart';
import '../../../widgets/TextFormField.dart';
import '../../../widgets/bottomBar/bottomnavigationbar.dart';
import '../dashboard/Dashboard Screen/dashboard_screen.dart';
import 'forgot_password_screen.dart';
import 'signin_screen.dart';

class Signinscreen extends StatefulWidget {
  Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  final ChangeContainerColor _changeContainerColor =
      Get.put(ChangeContainerColor());
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BgColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
                child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 235),
                child: Image.asset(
                  'assets/images/OnbardingShadow-img.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Get.to(Wellcomescreen());
                              },
                              child: Icon(Icons.arrow_back_ios_new_outlined)),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    'Sign In',
                                    style: TextStyles.ParagraphStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.07,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign In Your Account',
                          style: TextStyles.TitleText,
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 21),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign In now to begin an amazing journey',
                            style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Montserrat- Regular',
                                fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ])),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Email',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat- Regular',
                        fontSize: 16))
              ],
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            CustomTextField(
              hintText: '   Enter your email',
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat- Regular',
                        fontSize: 16))
              ],
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
 
///////////////     PASSWORD    TEXTFIELD  START  ////////////////////////////////////

            SizedBox(
              width: Get.width,
              height: 60,
              child: ValueListenableBuilder(
                  valueListenable: toggle,
                  builder: (context, value, child) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                           spreadRadius: 0,
                            blurRadius: 5,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.top,
                         obscureText: toggle.value,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16.0),
                          alignLabelWithHint: true,
                          hintText: '   Enter your password',
                          hintStyle: TextStyles.hinttextstyle,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: GestureDetector(
                              onTap: () {
                                toggle.value = !toggle.value;
                              },
                              child: Icon(
                                toggle.value
                                    ? Icons.visibility_off_outlined
                                    : Icons.remove_red_eye_outlined,
                                     color: Colors.grey,
                              ),
                            ),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),

                          enabledBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
///////////////     PASSWORD    TEXTFIELD  END  ////////////////////////////////////
           


            SizedBox(
              height: Get.height * 0.03,
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      _changeContainerColor.changecontainerColor();
                    },
                    child: Obx(
                      () => Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                 spreadRadius: 0,
                                 blurRadius: 5,
                                  offset: Offset(1, 1)),
                            ],
                            color: _changeContainerColor.containercolor.value,
                            shape: BoxShape.circle),
                      ),
                    ),
                  ),
                  Text(
                    '    Remember me',
                    style: TextStyles.hinttextstyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),

            Button(
                onTap: () {
                  Get.toNamed(RouteName.bottombar);
                  // Get.to(bottomnavigationbar());
                },
                title: 'Sign In'),

            SizedBox(
              height: Get.height * 0.05,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Get.toNamed(RouteName.forgotpassword);
                    Get.to(Forgotpassword(),
                      //  duration:
                      // Duration(milliseconds: 130),
                      //           transition:
                      //           Transition.native,
                    );
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.red,
                        fontFamily: 'Montserrat- Regular'),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: Get.height * 0.02,
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0, right: 220),
              child: Image.asset(
                'assets/images/OnbardingShadow-img1.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child:
               GestureDetector(
                 onTap: () {
                      // Get.toNamed(RouteName.createaccount);
                      Get.to(Createaccount(),
                      //  duration:
                      // Duration(milliseconds: 400),
                      //           transition:
                      //           Transition.fadeIn,
                      );
                    },
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    Text(
                      '  Create Account',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontFamily: 'Montserrat- Regular'),
                    )
                  ],
                               ),
               ),
            ),
          ],
        ),
      ),
    );
  }
}
