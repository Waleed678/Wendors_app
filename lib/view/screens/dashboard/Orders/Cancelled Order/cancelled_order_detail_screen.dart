import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/routes/routes.dart';
import 'package:wendors_app/view/screens/dashboard/Orders/order_screen_dashboard.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/profile_screen_dashboard.dart';
import 'package:wendors_app/widgets/Button.dart';


class CancelledOrderDetail extends StatefulWidget {
  const CancelledOrderDetail({super.key});

  @override
  State<CancelledOrderDetail> createState() => _CancelledOrderDetailState();
}

class _CancelledOrderDetailState extends State<CancelledOrderDetail> {
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Order Confirmed'),
      content: Text(''),
      isActive: true,
    ),
    Step(
      title: Text('On the way'),
      content: Text(''),
      isActive: true,
    ),
    Step(
      title: Text('Delivered'),
      content: Text(''),
      state: StepState.complete,
      isActive: false,
    ),
    Step(
      title: Text('Order Completed'),
      content: Text(''),
      state: StepState.complete,
      isActive: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BgColor,
      extendBody: true,
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        child: Column(children: [
          Container(
              child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 240),
              child: Image.asset(
                'assets/images/OnbardingShadow-img.png',
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            // Get.toNamed(RouteName.profilecreen);
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
                                'Order Details',
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
            Padding(
              padding: const EdgeInsets.only(top: 90,left: 10, right: 10),
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
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
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
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              width: 145,
                              height: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Image.asset(
                                'assets/images/Electronic-devices.png',
                                // height: 140,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                ],
              ),
            ),
          ])),
        
          SizedBox(
            height: Get.height * 0.01,
          ),
        
          Row(
            children: [
              Text(
                'Order Details',
                style: TextStyles.TitleText,
              ),
            ],
          ),
        
          SizedBox(
            height: Get.height * 0.02,
          ),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order Time',
                style: TextStyles.Categorystyle,
              ),
              Text(
                '06:00 PM',
                style: TextStyles.IntStyle,
              )
            ],
          ),
        
          SizedBox(
            height: Get.height * 0.02,
          ),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order Date',
                style: TextStyles.Categorystyle,
              ),
              Text(
                '23/05/2023',
                style: TextStyles.IntStyle,
              )
            ],
          ),
        
          SizedBox(
            height: Get.height * 0.02,
          ),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sub Total',
                style: TextStyles.Categorystyle,
              ),
              Text(
                '\$99.99',
                style: TextStyles.IntStyle,
              )
            ],
          ),
        
          SizedBox(
            height: Get.height * 0.02,
          ),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery Fee',
                style: TextStyles.Categorystyle,
              ),
              Text(
                '\$10.00',
                style: TextStyles.IntStyle,
              )
            ],
          ),
        
          SizedBox(
            height: Get.height * 0.02,
          ),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Grand Total',
                style: TextStyles.Categorystyle,
              ),
              Text(
                '\$99.99',
                style: TextStyles.IntStyle,
              )
            ],
          ),
        
          Divider(
            color: Color(0xffE7E7EF),
            height: 50,
            thickness: 2,
          ),
        
        
          Row(
            children: [
              Text(
                'Order Progress',
                style: TextStyles.TitleText,
              )
            ],
          ),
        
          ///////////////////////////      CUSTOM     STEPPPER  /////////////////////////
        
          SizedBox(
            height: Get.height * 0.01,
          ),
        
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 23,
                              backgroundColor: Colors.red,
                              child: Image.asset(
                                'assets/images/Order-confirmed.png',
                                height: Get.height * 0.03,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Order Confirmed',
                              style: TextStyle(
                                  color: ButtonColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 20,
                                width: 1,
                                color: ButtonColor,
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 23,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                'assets/images/fast.png',
                                height: Get.height * 0.02,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'On the way',
                              style: TextStyle(
                                  color:Colors.black45,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 20,
                                width: 1,
                                color: Colors.black45,
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 23,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                'assets/images/Delivered.png',
                                height: Get.height * 0.03,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Delivered',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 20,
                                width: 1,
                                color: Colors.black45,
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 23,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                'assets/images/OrderCompleted.png',
                                height: Get.height * 0.03,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Order Completed',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
        
         
        ]),
      ),
      bottomNavigationBar:  
            Padding(
              padding: const EdgeInsets.only(top: 0, right: 310),
              child: Image.asset(
                'assets/images/OnbardingShadow-img1.png',
              ),
            ),
    );
  }
}
