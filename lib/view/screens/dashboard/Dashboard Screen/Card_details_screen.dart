import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/order_completed_screen.dart';
import 'package:wendors_app/widgets/Button.dart';
import 'package:wendors_app/widgets/TextFormField.dart';

import '../../../../core/utils/colors.dart';

class Carddetails extends StatefulWidget {
  const Carddetails({super.key});

  @override
  State<Carddetails> createState() => _CarddetailsState();
}

class _CarddetailsState extends State<Carddetails> {
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
                                  'Card Details',
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
                        'Add Card Details',
                        style: TextStyles.TitleText,
                      )
                    ],
                  ),
                ],
              ),
            ])),
          
          SizedBox( height: Get.height * 0.01, ),
           
          Image.asset('assets/images/Card-img.png', height: Get.height * 0.25,),

           
          SizedBox( height: Get.height * 0.03, ),

          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                CustomTextField(hintText: 'Card Number', ),
                
                 SizedBox( height: Get.height * 0.03, ),
                
                CustomTextField(hintText: 'Card Holder Name', ),
                
                   SizedBox( height: Get.height * 0.03, ),
                
                
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     SizedBox(
                      // width: 160,
                      child: ShortTextField(hintText: 'Expiry', )),
                     
                      SizedBox(
                      // width: 160,
                      child: ShortTextField(hintText: 'ccv', )),
                   ],),
              ],
            ),
          )


          ]),
          
        ),
      ),
      bottomNavigationBar: Container(
          height: 120,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 15, right: 15),
                        child: Button(onTap: (){
                          Get.to(Ordercompleted(),
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
