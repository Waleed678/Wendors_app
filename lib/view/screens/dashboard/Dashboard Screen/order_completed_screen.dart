import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:wendors_app/core/utils/style.dart';

import 'package:wendors_app/widgets/Button.dart';
import 'package:wendors_app/widgets/TextFormField.dart';
import 'package:wendors_app/widgets/bottomBar/bottomnavigationbar.dart';

import '../../../../core/utils/colors.dart';

class Ordercompleted extends StatefulWidget {
  const Ordercompleted({super.key});

  @override
  State<Ordercompleted> createState() => _OrdercompletedState();
}

class _OrdercompletedState extends State<Ordercompleted> {
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
                                  'Order Completed',
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
                 
                ],
              ),
            ])),
          
          // SizedBox( height: Get.height * 0.01, ),
           
            Lottie.asset('assets/lottie_files/Done Mark.json',
                      width: 270, height: 220),

           SizedBox( height: Get.height * 0.03, ),

          Text('Order Completed', style: TextStyles.TitleText,),
          SizedBox( height: Get.height * 0.03, ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your order has been successfully completed.',style: TextStyles.hinttextstyle),
            ],
          ),
           SizedBox( height: Get.height * 0.02, ),
          
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('Your can track the progress in MY ORDERS.',style: TextStyles.hinttextstyle),
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
                        padding: const EdgeInsets.only(top: 20, left: 15,right: 15),
                        child: Button(onTap: (){
                          Get.to(bottomnavigationbar(),
                              duration: Duration(milliseconds: 400),
                                transition: Transition.fadeIn,
                          );
                        }, title: 'Done'),
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
