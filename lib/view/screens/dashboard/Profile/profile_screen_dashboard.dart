import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/view/screens/auth/change_container_color_controlller.dart';
import 'package:wendors_app/view/screens/auth/signin_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/FAQS_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/favourite_products.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/privacy_policy_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/userprofile_screen.dart';

import '../../../../routes/routes.dart';
import '../Orders/order_screen_dashboard.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  final ChangeContainerColor _changeContainerColor =
      Get.put(ChangeContainerColor());

  final PakistanContainerColor _pakistanContainerColor = Get.put(PakistanContainerColor());

   final FrenchContainerColor _frenchContainerColor = Get.put(FrenchContainerColor());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: BgColor,
     
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 230),
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
                        SizedBox(
                          width: Get.width * 0.09,
                        ),
                        Text('User Account', style: TextStyles.ParagraphStyle),
                        Image.asset(
                          'assets/images/Shopping-card.png',
                          height: Get.height * 0.03,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          showDialog(context: context,
                           builder: (context) {
                             return SizedBox(
                              height: 100, width: 00,
                               child: Dialog(
                                  backgroundColor: Colors.transparent,
                                  child: Image.asset('assets/images/Profile-img.png',),
                                 
                               ),
                             );
                           },
                           );
                        },
                        child: Image.asset(
                          'assets/images/Profile-img.png',
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ])),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Lorem Ipsum',
                style: TextStyles.ProfileText,
              )
            ],
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'loremipsum@gmail.com',
                style: TextStyles.GmailText,
              )
            ],
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Divider(
            color: Colors.black12,
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'User Settings',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              )
            ],
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Container(
            height: 360,
            width: Get.width,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2.0,
                blurRadius: 5.0,
                offset: Offset(0, 3),
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        //  Get.toNamed(RouteName.userprofile);
                        Get.to(
                          Userprofile(),
                          duration: Duration(milliseconds: 400),
                          transition: Transition.fadeIn,
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Image.asset(
                                'assets/images/User-icon.png',
                              ),
                            ),
                            height: 40,
                            width: 38,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2.0,
                                blurRadius: 5.0,
                                offset: Offset(0, 3),
                              )
                            ], color: Colors.white, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: Get.width * 0.05,
                          ),
                          Text(
                            'User Profile',
                            style: TextStyles.UserProfileText,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward_ios_sharp,
                                        size: 20)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        //  Get.toNamed(RouteName.orderscreen);
                        Get.to(
                          Orderscreen(),
                          duration: Duration(milliseconds: 400),
                          transition: Transition.fadeIn,
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Image.asset(
                                'assets/images/Orders-icon.png',
                              ),
                            ),
                            height: 40,
                            width: 38,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2.0,
                                blurRadius: 5.0,
                                offset: Offset(0, 3),
                              )
                            ], color: Colors.white, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: Get.width * 0.05,
                          ),
                          Text(
                            'Orders',
                            style: TextStyles.UserProfileText,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward_ios_sharp,
                                        size: 20)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(favouritescreen());
                      },
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Image.asset(
                                'assets/images/Favourite-img.png',
                              ),
                            ),
                            height: 40,
                            width: 38,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2.0,
                                blurRadius: 5.0,
                                offset: Offset(0, 3),
                              )
                            ], color: Colors.white, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: Get.width * 0.05,
                          ),
                          Text('Favourite', style: TextStyles.UserProfileText),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward_ios_sharp,
                                        size: 20)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: BgColor,
                                content: Container(
                                  height: 150,
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                'assets/images/england-img.png',
                                                height: Get.height * 0.03,
                                              ),
                                              Text('English'),
                                                                
                                              GestureDetector(
                                                onTap: () {
                                                  _changeContainerColor
                                                      .changecontainerColor();
                                                },
                                                child: Obx(
                                                  () => Row(
                                                    children: [
                                                      Container(
                                                        height: 20,
                                                        width: 20,
                                                        decoration: BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.5),
                                                              blurRadius: 2.0,
                                                              spreadRadius: 1,
                                                              offset:
                                                                  Offset(0, 01),
                                                            ),
                                                          ],
                                                          color:
                                                              _changeContainerColor
                                                                  .containercolor
                                                                  .value,
                                                          shape: BoxShape.circle,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              
                                            ],
                                          ),
                                          SizedBox(
                                            height: Get.height * 0.03,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                'assets/images/pakistan-flag.png',
                                                height: Get.height * 0.03,
                                              ),
                                              Text('Pakistan'),
                                              GestureDetector(
                                                onTap: () {
                                                 _pakistanContainerColor.pakistanContainerColor();  
                                                },
                                                child: Obx(
                                                  () => Row(
                                                    children: [
                                                      Container(
                                                        height: 20,
                                                        width: 20,
                                                        decoration: BoxDecoration(
                                                            boxShadow: [
                                                              BoxShadow(
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  blurRadius: 2.0,
                                                                  spreadRadius: 1,
                                                                  offset: Offset(
                                                                      0, 01)),
                                                            ],
                                                            color:
                                                            
                                                                _pakistanContainerColor
                                                                    .pakistancontainercolor
                                                                    .value,
                                                            shape:
                                                                BoxShape.circle),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: Get.height * 0.03,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                'assets/images/french-img.png',
                                                height: Get.height * 0.03,
                                              ),
                                              Text('French'),
                                              GestureDetector(
                                                onTap: () {
                                                  _frenchContainerColor.frenchContainerColor();
                                                },
                                                child: Obx(
                                                  () => Row(
                                                    children: [
                                                      Container(
                                                        height: 20,
                                                        width: 20,
                                                        decoration: BoxDecoration(
                                                            boxShadow: [
                                                              BoxShadow(
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  blurRadius: 2.0,
                                                                  spreadRadius: 1,
                                                                  offset: Offset(
                                                                      0, 01)),
                                                            ],
                                                            color:
                                                                _frenchContainerColor
                                                                    .frenchcontainercolor
                                                                    .value,
                                                            shape:
                                                                BoxShape.circle),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                ),
                                actions: [
                                  SizedBox(
                                    height: Get.height * 0.02,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('No')),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Yes')),
                                    ],
                                  )
                                ],
                              );
                            });
                      },
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Image.asset(
                                'assets/images/Language-img.png',
                              ),
                            ),
                            height: 40,
                            width: 38,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2.0,
                                blurRadius: 5.0,
                                offset: Offset(0, 3),
                              )
                            ], color: Colors.white, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: Get.width * 0.05,
                          ),
                          Text('Language', style: TextStyles.UserProfileText),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward_ios_sharp,
                                        size: 20)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(
                          privacypolicy(),
                          duration: Duration(milliseconds: 400),
                          transition: Transition.fadeIn,
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Image.asset(
                                'assets/images/PrivacyPolicy-img.png',
                              ),
                            ),
                            height: 40,
                            width: 38,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2.0,
                                blurRadius: 5.0,
                                offset: Offset(0, 3),
                              )
                            ], color: Colors.white, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: Get.width * 0.05,
                          ),
                          Text('Privacy Policy',
                              style: TextStyles.UserProfileText),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward_ios_sharp,
                                        size: 20)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(
                          FAQS(),
                          duration: Duration(milliseconds: 400),
                          transition: Transition.fadeIn,
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Image.asset(
                                'assets/images/aaaa.png',
                              ),
                            ),
                            height: 40,
                            width: 38,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2.0,
                                blurRadius: 5.0,
                                offset: Offset(0, 3),
                              )
                            ], color: Colors.white, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: Get.width * 0.05,
                          ),
                          Text("FAQ's", style: TextStyles.UserProfileText),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward_ios_sharp,
                                        size: 20)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: BgColor,
                                content: const Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    'Are you sure you want to logout?',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                                actions: [
                                  SizedBox(
                                    height: Get.height * 0.02,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            'No',
                                            style: TextStyle(color: Colors.red),
                                          )),
                                      TextButton(
                                          onPressed: () {
                                            Get.to(Signinscreen());
                                          },
                                          child: Text('Yes',
                                              style: TextStyle(
                                                  color: Colors.red))),
                                    ],
                                  )
                                ],
                              );
                            });
                      },
                      child: Row(
                        children: [
                          Container(
                            child:
                                Icon(Icons.logout_rounded, color: ButtonColor),
                            height: 40,
                            width: 38,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2.0,
                                blurRadius: 5.0,
                                offset: Offset(0, 3),
                              )
                            ], color: Colors.white, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: Get.width * 0.05,
                          ),
                          Text('Logout', style: TextStyles.UserProfileText),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward_ios_sharp,
                                      size: 20,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 270),
        child: Image.asset(
          'assets/images/OnbardingShadow-img1.png',
          height: Get.height * 0.13,
        ),
      ),
    );
  }
}
