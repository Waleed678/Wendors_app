import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/view/screens/auth/create_account_screen.dart';
import 'package:wendors_app/view/screens/auth/enter_new_password_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/profile_screen_dashboard.dart';
import 'package:wendors_app/widgets/bottomBar/bottomnavigationbar.dart';

import '../../../../core/utils/style.dart';
import '../../../../routes/routes.dart';
import '../../../../widgets/Button.dart';



class Userprofileupdated extends StatefulWidget {
  const Userprofileupdated({super.key});

  @override
  State<Userprofileupdated> createState() => _UserprofileupdatedState();
}

class _UserprofileupdatedState extends State<Userprofileupdated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BgColor,
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                      child: Stack(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 240, top: 10),
                      child: Image.asset(
                        'assets/images/OnbardingShadow-img.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 35),
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
                                          'User Profile',
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
                                'Profile Updated',
                                style: TextStyles.TitleText,
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              "Your profile has been succssfully updated.",
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
                         padding: const EdgeInsets.only(top: 20,left: 15, right: 15),
                         child: Button(
                                onTap: () {
                                  //  Get.toNamed(RouteName.bottombar);
                                   Get.to(bottomnavigationbar(),
                                      duration: Duration(milliseconds: 400),
                                transition: Transition.fadeIn,
                                   );
                                },
                                title: 'Done'),
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
