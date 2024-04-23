import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/routes/routes.dart';
import 'package:wendors_app/view/screens/auth/enter_new_password_screen.dart';
import '../../../core/utils/style.dart';
import '../../../widgets/Button.dart';


class Entercode extends StatefulWidget {
  const Entercode({super.key});

  @override
  State<Entercode> createState() => _EntercodeState();
}

class _EntercodeState extends State<Entercode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BgColor,
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
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
                            padding: const EdgeInsets.only(top: 35),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child:
                                        Icon(Icons.arrow_back_ios_new_outlined)),
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
                  padding: const EdgeInsets.only(left: 17, top: 60),
                  child: Lottie.asset('assets/lottie_files/ForgotPassword.json',
                      width: 290, height: 250),
                ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                 SizedBox(
                    height: Get.height * 0.04,
                  ),
                              Text(
                                'Enter Code',
                                style: TextStyles.TitleText,
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Please enter the code that you received in email',
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
                    height: Get.height * 0.08,
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 51,
                        width: 49,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 1,
                                blurRadius: 9,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: '',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none
            
                              )
                               
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                      ),
                     
                      SizedBox(
                        height: 51,
                        width: 49,
                        child: Container(
                           decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 1,
                                blurRadius: 9,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: '',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                                focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none
            
                              )
                              
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                      ),
                     
                      SizedBox(
                        height: 51,
                        width: 49,
                        child: Container(
                           decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 1,
                                blurRadius: 9,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: '',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                                focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none
            
                              )
                             
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                      ),
                     
                      SizedBox(
                        height: 51,
                        width: 49,
                        child: Container(
                           decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 1,
                                blurRadius: 9,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: '',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none
            
                              )
                            ),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                 
                  SizedBox(
                    height: Get.height * 0.08,
                  ),
                  // Container(
                  //   child: Stack(
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.only(right: 220, top: 38),
                  //         child: Image.asset(
                  //           'assets/images/OnbardingShadow-img1.png',
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.only(top: 40),
                  //         child: Button(
                  //             onTap: () {
                  //               Get.to(enternewpassword());
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
                                  // Get.toNamed(RouteName.enternewpassword);
                                  Get.to(Enternewpassword(),
                                //     duration:
                                // Duration(milliseconds: 400),
                                // transition:
                                // Transition.circularReveal,
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
