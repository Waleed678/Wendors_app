import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/dashboard_screen.dart';
import 'package:wendors_app/widgets/bottomBar/bottomnavigationbar.dart';

import '../../../core/utils/style.dart';
import '../../../routes/routes.dart';
import '../../../widgets/Button.dart';
import '../../../widgets/TextFormField.dart';
import 'signin_screen.dart';

class Createaccount extends StatefulWidget {
  const Createaccount({super.key});

  @override
  State<Createaccount> createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);
  ValueNotifier<bool> ConfirmPasswordtoggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size(Get.width, 100),
          child: Container(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 240, bottom: 30),
                  child: Image.asset(
                    'assets/images/OnbardingShadow-img.png',
                    height: Get.height * 0.15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Hero(
                              tag: 'imageHero',
                            child: Icon(Icons.arrow_back_ios_new_outlined))),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20, top: 10),
                              child: Text(
                                'Create Account',
                                style: TextStyles.ParagraphStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create Your Account',
                        style: TextStyles.TitleText,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create account to begin an amazing journey',
                        style: TextStyle(
                            fontFamily: 'Montserrat- Regular', fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15,),
        child: SingleChildScrollView(
          child: Column(children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Name',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat- Regular',
                        fontSize: 16))
              ],
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            CustomTextField(
              hintText: '   Enter your name',
            ),
            SizedBox(
              height: Get.height * 0.01,
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
              height: Get.height * 0.01,
            ),
            CustomTextField(
              hintText: '   Enter your email',
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Mobile Number',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat- Regular',
                        fontSize: 16))
              ],
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            CustomTextField(
              hintText: '   Enter your number',
            ),
            SizedBox(
              height: Get.height * 0.01,
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
              height: Get.height * 0.01,
            ),

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
                          hintText: 'Enter your password',
                          hintStyle: TextStyles.hinttextstyle,
                          suffixIcon: GestureDetector(
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

            SizedBox(
              height: Get.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Confirm Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat- Regular',
                        fontSize: 16))
              ],
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),

            SizedBox(
              width: Get.width,
              height: 60,
              child: ValueListenableBuilder(
                  valueListenable: ConfirmPasswordtoggle,
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
                          hintText: 'Confirm your password',
                          hintStyle: TextStyles.hinttextstyle,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              ConfirmPasswordtoggle.value =
                                  !ConfirmPasswordtoggle.value;
                            },
                            child: Icon(
                              ConfirmPasswordtoggle.value
                                  ? Icons.visibility_off_outlined
                                  : Icons.remove_red_eye_outlined,
                              color: Colors.grey,
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
          ]),
        ),
      ),

      bottomNavigationBar: Container(
        color: Colors.transparent,
        height: 110,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Button(
                  onTap: () {
                    // Get.toNamed(RouteName.bottombar);
                    Get.to(bottomnavigationbar(),
                      //   duration:
                      // Duration(milliseconds: 400),
                      //           transition:
                      //           Transition.fadeIn,
                    );
                  },
                  title: 'Create Account'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 220),
              child: Image.asset(
                'assets/images/OnbardingShadow-img1.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 70,
              ),
              child: 
              GestureDetector(
                  onTap: () {
                      // Get.toNamed(RouteName.signin);
                      Get.to(Signinscreen(),
                      //    duration:
                      // Duration(milliseconds: 400),
                      //           transition:
                      //           Transition.fadeIn,
                      );
                    },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already Have an Account?"),
                    Text(
                      '  Sign In',
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
      // Container(
      //       child: Stack(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.only(top: 28),
      //             child: Button(onTap: () {
      //               Get.to(Dashboardscreen());
      //             }, title: 'Create Account'),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.only(right: 230,),
      //             child: Image.asset(
      //               'assets/images/OnbardingShadow-img1.png',
      //               height: Get.height * 0.3,
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.only(top: 100),
      //             child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Text('Already Have an Account?'),
      //                   Row(
      //                     children: [
      //                       GestureDetector(
      //                         onTap: () {
      //                           Get.to(Signinscreen());
      //                         },
      //                         child: Text(
      //                           '  Sign In',
      //                           style: TextStyle(
      //                               fontWeight: FontWeight.w500,
      //                               color: Colors.red,
      //                               fontFamily: 'Montserrat-Regular'),
      //                         ),
      //                       )
      //                     ],
      //                   )
      //                 ]),
      //           ),
      //         ],
      //       ),
      //     ),
    );
  }
}
