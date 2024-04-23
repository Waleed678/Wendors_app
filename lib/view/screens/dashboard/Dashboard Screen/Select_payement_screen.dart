import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/Card_details_screen.dart';

import 'package:wendors_app/widgets/Button.dart';
import 'package:wendors_app/widgets/TextFormField.dart';

import '../../../../core/utils/colors.dart';
import '../../../../routes/routes.dart';

class Selectpayement extends StatefulWidget {
  const Selectpayement({super.key});

  @override
  State<Selectpayement> createState() => _SelectpayementState();
}

class _SelectpayementState extends State<Selectpayement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BgColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
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
              Column(
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
                                  'Shipping Details',
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
                    height: Get.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Select Payement Methods',
                        style: TextStyles.TitleText,
                      )
                    ],
                  ),
                ],
              ),
            ])),
          
          SizedBox( height: Get.height * 0.03, ),
           
          SizedBox( width: Get.width * 0.03, ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 110, width: 90,
              decoration: BoxDecoration(
               color: Colors.white,
               boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1)
                )
               ],
               borderRadius: BorderRadius.circular(10)),
               child: Center(child: Image.asset('assets/images/Visa-img.png', height: Get.height * 0.02,)),
            ),
           SizedBox( width: Get.width * 0.03, ),  //Mastercard-img
            
             Container(
              height: 110, width: 90,
               decoration: BoxDecoration(
               color: Colors.white,
               boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1)
                )
               ],
               borderRadius: BorderRadius.circular(10)),
                child: Center(child: Image.asset('assets/images/Mastercard-img.png', height: Get.height * 0.04,)),
            ),
            SizedBox( width: Get.width * 0.03, ),
            
             Container(
              height: 110, width: 90,
               decoration: BoxDecoration(
               color: Colors.white,
               boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1)
                )
               ],
               borderRadius: BorderRadius.circular(10)),
               child: Center(child: Image.asset('assets/images/Paypal-img.png', height: Get.height * 0.04,)),
            ),
          ],
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
                        child: Button(onTap: (){
                          //  Get.toNamed(RouteName.carddetils);
                          Get.to(Carddetails(),
                             duration: Duration(milliseconds: 400),
                                transition: Transition.fadeIn,
                          );
                        }, title: 'Proceed'),
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
