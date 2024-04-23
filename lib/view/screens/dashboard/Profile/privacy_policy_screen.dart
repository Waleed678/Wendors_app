import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/userprofile_screen.dart';

import '../../../../routes/routes.dart';
import '../Orders/order_screen_dashboard.dart';

class privacypolicy extends StatefulWidget {
  const privacypolicy({super.key});

  @override
  State<privacypolicy> createState() => _privacypolicyState();
}

class _privacypolicyState extends State<privacypolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: BgColor,
      // appBar: AppBar(
      //   backgroundColor: BgColor,
      //   automaticallyImplyLeading: false,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       SizedBox(
      //         width: Get.width * 0.09,
      //       ),
      //       Text('User Account'),
      //       Image.asset(
      //         'assets/images/Shopping-card.png',
      //         height: Get.height * 0.04,
      //       ),
      //     ],
      //   ),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15,),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
        
         Container(
                    child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 190),
                    child: Image.asset(
                      'assets/images/OnbardingShadow-img.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                       Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          GestureDetector(
                            onTap: (){
                              Get.back();
                            },
                            child: Image.asset('assets/images/back-icon.png', height: Get.height * 0.03, )),
                         
                          Text(
                            'privacy Policy',
                            style: TextStyles.ParagraphStyle
                          ),
                          Image.asset(
                            'assets/images/Shopping-card.png',
                            height: Get.height * 0.03,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.08,
                    ),

                     Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Lorem Ipsum dolor',
                style: TextStyles.TitleText,
              ),
            ],
          ),
                   
                      ],
                    ),
                  ),
                ])),
          
         
           SizedBox(
            height: Get.height * 0.02,
          ),

          Text('Lorem ipsum dolor sit amet,consectetur adipis cing elit. Etiam odio est, loareet vitea dictum ac, accumsan vitae erat. Nullam et hendrerit nulla, vel dapibus dolor. Aliquam malesudas at orci vitae depibus. Fusce rutrum magna id lacus tristi que, sit amet efficitur ligula maximus. ',
            maxLines: 7, overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16, color: TextColor,
      fontFamily: 'Montserrat-Regular' )
          ),

          SizedBox(
            height: Get.height * 0.02,
          ),

           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Lorem Ipsum dolor',
                style: TextStyles.TitleText,
              ),
            ],
          ),
           SizedBox(
            height: Get.height * 0.02,
          ),

          Text('Lorem ipsum dolor sit amet,consectetur adipis cing elit. Etiam odio est, loareet vitea dictum ac, accumsan vitae erat. Nullam et hendrerit nulla, vel dapibus dolor. Aliquam malesudas at orci vitae depibus. Fusce rutrum magna id lacus tristi que, sit amet efficitur ligula maximus. ',
            maxLines: 7, overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16, color: TextColor,
      fontFamily: 'Montserrat-Regular' )
          ),

         
          
        
          
           
        ]),
      ),
       bottomNavigationBar:  Padding(
        padding: const EdgeInsets.only(right: 270),
        child: Image.asset(
          'assets/images/OnbardingShadow-img1.png', height: Get.height * 0.13,
        ),
      ),
    );
  }
}
