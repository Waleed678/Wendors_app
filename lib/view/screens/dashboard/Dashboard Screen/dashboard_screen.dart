import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/More_Data_screen.dart/dashboard_data_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/shopping_cart_screen.dart';
import 'package:wendors_app/widgets/TextFormField.dart';

class Dashboardscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CarouselController controller = CarouselController();
    return Scaffold(
      backgroundColor: BgColor,
      //  appBar: AppBar(
      //   centerTitle: true,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   scrolledUnderElevation: 0,
      //   automaticallyImplyLeading: false,
      //   bottom: PreferredSize(
      //     preferredSize: Size(Get.width, Get.height * 0.125),
      //     child: Container(
      //       child: Padding(
      //         padding: const EdgeInsets.only(left: 15, right: 15),
      //         child: Column(
      //           children: [
      //             Stack(
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.only(left: 230, bottom: 30),
      //                   child: Image.asset(
      //                     'assets/images/OnbardingShadow-img.png',
      //                     height: Get.height * 0.15,
      //                   ),
      //                 ),
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   children: [
      //                     Padding(
      //                       padding: const EdgeInsets.only(left: 180, top: 20),
      //                       child: Text(
      //                         'Home',
      //                         style: TextStyles.ParagraphStyle,
      //                       ),
      //                     ),
      //                     Expanded(
      //                       child: Padding(
      //                         padding:
      //                             const EdgeInsets.only(right: 15, top: 20),
      //                         child: Row(
      //                           mainAxisAlignment: MainAxisAlignment.end,
      //                           children: [
      //                             GestureDetector(
      //                               onTap: () {
      //                                 // Get.toNamed(RouteName.shoppingcart);
      //                                 Get.to(
      //                                   Shoppingcart(),
      //                                   duration: Duration(milliseconds: 400),
      //                                   transition: Transition.fadeIn,
      //                                 );
      //                               },
      //                               child: Image.asset(
      //                                 'assets/images/Shopping-card.png',
      //                                 height: Get.height * 0.03,
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 70),
      //                   child: CustomTextField(
      //                     hintText: 'Search here...',
      //                     // obscureText: false,
      //                     suffixIcon: Padding(
      //                       padding: const EdgeInsets.all(12),
      //                       child: Image.asset(
      //                         'assets/images/Search-icon.png',
      //                         height: 5,
      //                         width: 5,
      //                         fit: BoxFit.cover,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 230,
                          ),
                          child: Image.asset( 
                            'assets/images/OnbardingShadow-img.png',
                            height: Get.height * 0.15,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 180, top: 25),
                              child: Text(
                                'Home',
                                style: TextStyles.ParagraphStyle,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 15, top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // Get.toNamed(RouteName.shoppingcart);
                                        Get.to(
                                          Shoppingcart(),
                                          // duration: Duration(milliseconds: 400),
                                          // transition: Transition.fadeIn,
                                        );
                                      },
                                      child: Image.asset(
                                        'assets/images/Shopping-card.png',
                                        height: Get.height * 0.03,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: CustomTextField(
                            hintText: 'Search here...',
                            // obscureText: false,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Image.asset(
                                'assets/images/Search-icon.png',
                                height: 5,
                                width: 5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: Get.height,
              child: PageView(
                scrollDirection: Axis.vertical,
                children: [
                  seconddata(),
                  seconddata(),
                  seconddata(),
                ],
              ),
            )

          
          ],
        ),
      ),
    );
  }
}


