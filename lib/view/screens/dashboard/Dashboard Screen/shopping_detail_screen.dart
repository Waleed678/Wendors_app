import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/routes/routes.dart';

import 'package:wendors_app/widgets/Button.dart';
import 'package:wendors_app/widgets/TextFormField.dart';

import '../../../../core/utils/colors.dart';
import 'Select_payement_screen.dart';

class Shoppingdetail extends StatefulWidget {
  const Shoppingdetail({super.key});

  @override
  State<Shoppingdetail> createState() => _ShoppingdetailState();
}

class _ShoppingdetailState extends State<Shoppingdetail> {
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
                        'Add Shipping Details',
                        style: TextStyles.TitleText,
                      )
                    ],
                  ),
                ],
              ),
            ])),
          
          SizedBox( height: Get.height * 0.03, ),
           
         

          CustomTextField(hintText: 'Address',),

            SizedBox( height: Get.height * 0.03, ),
          
          CustomTextField(hintText: 'District', ),

            SizedBox( height: Get.height * 0.03, ),
          
          CustomTextField(hintText: 'City', ),

            SizedBox( height: Get.height * 0.03, ),
          
          CustomTextField(hintText: 'Country',),
          
           
          
                    
                 
           
           
          
          
              
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
                          //  Get.toNamed(RouteName.selectpayement);
                          Get.to(Selectpayement(),
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
