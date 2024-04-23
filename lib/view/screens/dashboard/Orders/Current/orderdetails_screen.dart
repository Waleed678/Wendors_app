import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/routes/routes.dart';
import 'package:wendors_app/view/screens/dashboard/Orders/order_screen_dashboard.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/profile_screen_dashboard.dart';
import 'package:wendors_app/widgets/Button.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/style.dart';

class Orderdetailscreen extends StatefulWidget {
  const Orderdetailscreen({super.key});

  @override
  State<Orderdetailscreen> createState() => _OrderdetailscreenState();
}

class _OrderdetailscreenState extends State<Orderdetailscreen> {
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size(Get.width, 190),
          child: Container(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 270, bottom: 20),
                  child: Image.asset(
                    'assets/images/OnbardingShadow-img.png',
                    height: Get.height * 0.15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
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
                              padding:
                                  const EdgeInsets.only(right: 20, top: 20),
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
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                      child: Stack(children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 90, left: 10, right: 10),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                  ])),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        child: SingleChildScrollView(
          child: Column(children: [
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

            SizedBox(
              height: Get.height * 0.0,
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
              height: Get.height * 0.02,
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
                                  height: 30,
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
                                backgroundColor: ButtonColor,
                                child: Image.asset(
                                  'assets/images/OnTheWay.png',
                                  height: Get.height * 0.02,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'On the way',
                                style: TextStyle(
                                    color: ButtonColor,
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
                                  height: 30,
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
                                  height: 30,
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

            SizedBox(
              height: 200,
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Button(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Center(
                                  child: Text(
                                'Are you sure?',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat'),
                              )),
                            ),
                            content: Text(
                                'Are you sure you want to cancel the order?',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                    fontFamily: 'Montserrat')),
                            actions: [
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Cancel'),
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              width: 1.5,
                                              color: Color(0xff707070)),
                                          primary: Colors.white,
                                          onPrimary: Colors.black54),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Get.toNamed(RouteName.orderscreen);
                                        // Get.to(Orderscreen());
                                      },
                                      child: Text('Confirm'),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          onPrimary: Colors.white),
                                    ),
                                  )
                                ],
                              )
                            ],
                          );
                        });
                  },
                  title: 'Cancel Order'),
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
