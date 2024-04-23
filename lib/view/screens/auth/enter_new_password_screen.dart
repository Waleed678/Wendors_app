import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/view/screens/auth/password_updated_screen.dart';
import '../../../core/utils/style.dart';
import '../../../routes/routes.dart';
import '../../../widgets/Button.dart';
import '../../../widgets/TextFormField.dart';

class Enternewpassword extends StatefulWidget {
  const Enternewpassword({super.key});

  @override
  State<Enternewpassword> createState() => _EnternewpasswordState();
}

class _EnternewpasswordState extends State<Enternewpassword> {


   ValueNotifier<bool> NewPasswordtoggle = ValueNotifier<bool>(true);
   ValueNotifier<bool> ConfirmPasswordtoggle = ValueNotifier<bool>(true);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
                  padding: const EdgeInsets.only(left: 17, top: 10),
                  child: Lottie.asset('assets/lottie_files/ForgotPassword.json',
                      width: 290, height: 255),
                ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Enter New Password',
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
                            'Please enter your new password',
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
              height: Get.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('New Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat- Regular',
                        fontSize: 16))
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
              SizedBox(
              width: Get.width,
              height: 60,
              child: ValueListenableBuilder(
                  valueListenable: NewPasswordtoggle,
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
                         obscureText: NewPasswordtoggle.value,
                        decoration: InputDecoration(
                        
                          contentPadding: EdgeInsets.all(16.0),
                          alignLabelWithHint: true,
                          hintText: 'Enter new password',
                          hintStyle: TextStyles.hinttextstyle,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              NewPasswordtoggle.value = !NewPasswordtoggle.value;
                            },
                            child: Icon(
                              NewPasswordtoggle.value
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
              height: Get.height * 0.02,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Confirm New Password',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat- Regular',
                        fontSize: 16))
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
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
                         obscureText: ConfirmPasswordtoggle.value,
                        decoration: InputDecoration(
                        
                          contentPadding: EdgeInsets.all(16.0),
                          alignLabelWithHint: true,
                          hintText: 'Confirm new password',
                          hintStyle: TextStyles.hinttextstyle,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              ConfirmPasswordtoggle.value = !ConfirmPasswordtoggle.value;
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
                    //  Get.toNamed(RouteName.passwordupdated);
                    Get.to(Passwordupdated(),
                      // duration:
                      // Duration(milliseconds: 400),
                      //           transition:
                      //           Transition.circularReveal,
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
