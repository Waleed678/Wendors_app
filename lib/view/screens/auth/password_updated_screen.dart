import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/view/screens/auth/create_account_screen.dart';
import 'package:wendors_app/view/screens/auth/enter_new_password_screen.dart';

import '../../../core/utils/style.dart';
import '../../../routes/routes.dart';
import '../../../widgets/Button.dart';
import '../../../widgets/TextFormField.dart';
import '../dashboard/Dashboard Screen/dashboard_screen.dart';
import 'forgot_password_screen.dart';
import 'signin_screen.dart';

class Passwordupdated extends StatefulWidget {
  const Passwordupdated({super.key});

  @override
  State<Passwordupdated> createState() => _PasswordupdatedState();
}

class _PasswordupdatedState extends State<Passwordupdated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BgColor,
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: SingleChildScrollView(
            child: Column(
                children: [
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
                  child: Lottie.asset('assets/lottie_files/password_updated.json',
                      width: 290, height: 250),
                ),
            
                SizedBox(height: 30,),
            
                  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Password Updated',
                                style: TextStyles.TitleText,
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              "You've successfully updated your passoword.Now please login to your account",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  height: 1.5,
                                  color: Colors.black54,
                                  fontFamily: 'Montserrat- Regular',
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),
                  SizedBox(height: 140,),
                  // Container(
                  //   child: Stack(
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.only(right: 200, top: 90),
                  //         child: Image.asset(
                  //           'assets/images/OnbardingShadow-img1.png',
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.only(top: 80),
                  //         child: Button(
                  //             onTap: () {
                  //               Get.to(Signinscreen());
                  //             },
                  //             title: 'Continue'),
                  //       ),
                  //     ],
                  //   ),
                  // ),
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
                                  //  Get.toNamed(RouteName.signin);
                                  Get.to(Signinscreen(),
                      //               duration:
                      // Duration(milliseconds: 400),
                      //           transition:
                      //           Transition.fadeIn,
                                  );
                                },
                                title: 'Continue'),
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
