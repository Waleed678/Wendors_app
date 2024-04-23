import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/view/screens/auth/create_account_screen.dart';
import 'package:wendors_app/view/screens/auth/enter_code_screen.dart';

import '../../../core/utils/style.dart';
import '../../../routes/routes.dart';
import '../../../widgets/Button.dart';
import '../../../widgets/TextFormField.dart';
import '../dashboard/Dashboard Screen/dashboard_screen.dart';
import 'forgot_password_screen.dart';
import 'signin_screen.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
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
                padding: const EdgeInsets.only(left: 245),
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
                                Get.back();
                              },
                              child: Icon(Icons.arrow_back_ios_new_outlined)),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    'Forgot Password',
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
                  padding: const EdgeInsets.only(left: 17, top: 50),
                  child: Lottie.asset('assets/lottie_files/ForgotPassword.json',
                      width: 290, height: 250),
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Forgot Your Password?',
                          style: TextStyles.TitleText,
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Enter your email to get a code',
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
                hintText: '   Enter your email',),
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
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Button(
                  onTap: () {
                    //  Get.toNamed(RouteName.entercode);
                    Get.to(Entercode(),
                      //  duration:
                      // Duration(milliseconds: 400),
                      //           transition:
                      //           Transition.circularReveal,
                    );
                  },
                  title: 'Send Request'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, right: 220),
              child: Image.asset(
                'assets/images/OnbardingShadow-img1.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
