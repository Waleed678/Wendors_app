import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/shopping_cart_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Orders/Cancelled%20Order/cancelled_order_detail_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Orders/Completed%20Order/completed_order_detail_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Orders/Current/orderdetails_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/profile_screen_dashboard.dart';
import 'package:wendors_app/widgets/bottomBar/bottomnavigationbar.dart';

import '../../../../core/utils/style.dart';

class WidgetController extends GetxController {
  final RxInt selectedTab = RxInt(1);

  void selectTab(int index) {
    selectedTab.value = index;
  }
}

class Orderscreen extends StatelessWidget {
  final WidgetController controller = Get.put(WidgetController());

  Widget tabBarWidget(int index, String text) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          controller.selectTab(index);
        },
        child: Obx(() {
          return AnimatedContainer(
            height: Get.height * 0.08,
            decoration: BoxDecoration(
              color: index == controller.selectedTab.value
                  ? ButtonColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(35),
            ),
            curve: Curves.easeInOutQuint,
            duration: const Duration(milliseconds: 400),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 1,
                ),
                Text(
                  text,
                  style: TextStyles.TabBarButtonText!.copyWith(
                    color: index == controller.selectedTab.value
                        ? Colors.white
                        : Colors.black54,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 290),
        child: Image.asset('assets/images/OnbardingShadow-img1.png',height: Get.height * 0.09,),
      ),
      backgroundColor: BgColor,
        body: Padding(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child: Column(
        children: [
          Container(
              child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 240, top: 20),
              child: Image.asset(
                'assets/images/OnbardingShadow-img.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Get.to(bottomnavigationbar());
                            },
                            child: Image.asset(
                              'assets/images/back-icon.png',
                              height: Get.height * 0.03,
                            )),
                        // SizedBox(
                        //   width: Get.width * 0.09,
                        // ),
                        Text('Orders', style: TextStyles.ParagraphStyle),
                        GestureDetector(
                          onTap: (){
                            Get.to(Shoppingcart());
                          },
                          child: Image.asset(
                            'assets/images/Shopping-card.png',
                            height: Get.height * 0.03,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          tabBarWidget(1, 'Current'),
                          SizedBox(width: Get.width * 0.02),
                          tabBarWidget(
                              2,
                              // 'assets/images/business-black-menu.png',
                              'Complete'),
                          SizedBox(width: Get.width * 0.02),
                          tabBarWidget(
                              3,
                              //  'assets/images/business-white-contact.png',
                              'Cancelled'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
           
          ])),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15,),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Obx(() => controller.selectedTab.value == 1
              ? Current()
              : controller.selectedTab.value == 2
                  ? Complete()
                  : Cancelled())
        ],
      ),
    ));
  }
}

///////////////////////////   Current SCREEN ///////////////////////////////

class Current extends StatelessWidget {
  const Current({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 12,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20,),
        child: SingleChildScrollView(
          child: Column(children: [
            GestureDetector(
              onTap: (){
                Get.to(Orderdetailscreen());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'MacBook Pro 2018',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Mac-img.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),
               
                ],
              ),
            ),



            GestureDetector(
              onTap: (){
                Get.to(Orderdetailscreen());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DELL 2015',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.IntStyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Electronic-devices.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),
                ],
              ),
            ),



            GestureDetector(
               onTap: (){
                Get.to(Orderdetailscreen());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DELL 2018',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                 Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Electronic-devices.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),
                ],
              ),
            ),




            GestureDetector(
               onTap: (){
                Get.to(Orderdetailscreen());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DELL 2018',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Mac-img.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),
                ],
              ),
            ),


           GestureDetector(
               onTap: (){
                Get.to(Orderdetailscreen());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DELL 2018',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Mac-img.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),
                ],
              ),
            ),






          ]),
          
        ),
      ),
      
    );
  }
}

/////////////////////////////////  Complete SCREEN ////////////////////////////////////////////////////////////////////////////////////

class Complete extends StatelessWidget {
  const Complete({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 12,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20,),
        child: SingleChildScrollView(
          child: Column(children: [
            GestureDetector(
              onTap: (){
                Get.to(CompletedOrderDetail());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'MacBook Pro 2018',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Electronic-devices.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),
                ],
              ),
            ),


                        GestureDetector(
              onTap: (){
                Get.to(CompletedOrderDetail());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DELL 2015',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.IntStyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                 Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Mac-img.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),
                ],
              ),
            ),



            GestureDetector(
              onTap: (){
                Get.to(CompletedOrderDetail());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DELL 2015',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.IntStyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                 Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Mac-img.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),
                ],
              ),
            ),



            GestureDetector(
               onTap: (){
                Get.to(CompletedOrderDetail());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DELL 2018',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Electronic-devices.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),
                ],
              ),
            ),




            GestureDetector(
               onTap: (){
                Get.to(CompletedOrderDetail());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DELL 2018',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                 Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Mac-img.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),
                ],
              ),
            ),
          ]),
          
        ),
      ),
      
    );
  }
}

//////////////////////////////////////////  Cancelled SCREEN  //////////////////////////////////////////////////

class Cancelled extends StatelessWidget {
  const Cancelled({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 12,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20,),
        child: SingleChildScrollView(
          child: Column(children: [
            GestureDetector(
              onTap: (){
                Get.to(CancelledOrderDetail());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'MacBook Pro 2018',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                 Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Mac-img.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),
                ],
              ),
            ),



            GestureDetector(
              onTap: (){
                Get.to(CancelledOrderDetail());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DELL 2015',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.IntStyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Electronic-devices.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),                ],
              ),
            ),


              GestureDetector(
              onTap: (){
                Get.to(CancelledOrderDetail());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DELL 2015',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.IntStyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Electronic-devices.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),                ],
              ),
            ),



            GestureDetector(
               onTap: (){
                Get.to(CancelledOrderDetail());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DELL 2018',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Mac-img.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),
                ],
              ),
            ),




            GestureDetector(
               onTap: (){
                Get.to(CancelledOrderDetail());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      height: 125,
                      width: Get.width,
                      child: Padding(
                        padding: EdgeInsets.only(left: 150, top: 6),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DELL 2018',
                                style: TextStyles.OrderTextStyle
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Date: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '21/11/2023',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Time: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '09:00 AM',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    ' 2',
                                    style: TextStyles.IntStyle,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Price:  ',
                                    style: TextStyles.Categorystyle,
                                  ),
                                  Text(
                                    '\$1099',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: ButtonColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                Padding(
                     padding: const EdgeInsets.only(top: 4),
                     child: Container(
                      // width: 140,
                      // height: 120,
                      child: SizedBox(
                        height: Get.height * 0.17, width: Get.width * 0.35,
                        child: Image.asset(
                          'assets/images/Electronic-devices.png',
                          //  height: 130,
                          fit: BoxFit.fill,
                        ),
                      ),),
                   ),
                ],
              ),
            ),
          ]),
          
        ),
      ),
      
    );
  }
}
