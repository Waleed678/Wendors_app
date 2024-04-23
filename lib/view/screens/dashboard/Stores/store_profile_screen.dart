import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/view/screens/dashboard/Stores/store_product_screen.dart';
import 'package:wendors_app/widgets/bottomBar/bottomnavigationbar.dart';


import '../../../../core/utils/colors.dart';
import '../../../../routes/routes.dart';

class Storeprofile extends StatefulWidget {
  const Storeprofile({super.key});

  @override
  State<Storeprofile> createState() => _StoreprofileState();
}


class _StoreprofileState extends State<Storeprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: BgColor,
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: Get.width * 0.09,
                              ),
                              Text(
                                'Store Profile',
                                style: TextStyles.ParagraphStyle,
                              ),
                              GestureDetector(
                                onTap: () {
                                   Get.toNamed(RouteName.shoppingcart);
                                  // Get.to(Shoppingcart());
                                },
                                child: Image.asset(
                                  'assets/images/Shopping-card.png',
                                  height: Get.height * 0.03,
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
                  Image.asset(
                    'assets/images/Mac-pic.png',
                    height: Get.height * 0.2,
                  )
                ],
              ),
            ])),
          
            // SizedBox( height: Get.height * 0.03, ),
          
            Text(
              'MacBook Pro 2023',
              style: TextStyles.TitleText,
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
          
            Text(
              'Lorem ipsum dolor sit amet',
              style: TextStyles.hinttextstyle,
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
          
            Divider(
              color: Colors.black12,
            ),
          
            SizedBox(
              height: Get.height * 0.01,
            ),
          
            Text(
              'Product',
              style: TextStyles.CreateAccountButtonText,
            ),
          
           
          
            Container(
              height: 400,
              child: GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2),
                scrollDirection: Axis.vertical, 
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.to(Storeproduct(),
                        duration: Duration(milliseconds: 400),
                                transition: Transition.fadeIn,
                      );
                    },
                    child: Container(
                      height: 230,
                      width: 170,
                      decoration: BoxDecoration(
                        //  color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(children: [
                        Image.asset(
                          'assets/images/Dell-img.png',
                          height: Get.height * 0.17,
                        
                        ),
                        Text(
                          'MacBook Pro 2015',
                          style: TextStyles.StoreProfileText,
                        ),
                       
                        Text('\$1009',
                            style: TextStyle(
                                fontSize: 16,
                                color: ButtonColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat')),
                      ]),
                    ),
                  ),
                      
                      
                  GestureDetector(
                    onTap: (){
                      //  Get.toNamed(RouteName.storeproduct);
                       Get.to(Storeproduct(),
                           duration: Duration(milliseconds: 400),
                                transition: Transition.fadeIn,
                       );
                    },
                    child: Container(
                      height: 230,
                      width: 170,
                      decoration: BoxDecoration(
                        //  color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(children: [
                        Image.asset(
                          'assets/images/MacBook-img.png',
                          height: Get.height * 0.17,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          'MacBook Pro 2015',
                          style: TextStyles.StoreProfileText,
                        ),
                       
                        Text('\$1009',
                            style: TextStyle(
                                fontSize: 16,
                                color: ButtonColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat')),
                      ]),
                    ),
                  ),
                      
                      
                 GestureDetector(
                   onTap: (){
                      //  Get.toNamed(RouteName.storeproduct);
                     Get.to(Storeproduct(),
                        duration: Duration(milliseconds: 400),
                                transition: Transition.fadeIn,
                     );
                    },  
                  
                   child: Container(
                      height: 230,
                      width: 170,
                      decoration: BoxDecoration(
                        //  color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(children: [
                        Image.asset(
                          'assets/images/Dell-img.png',
                          height: Get.height * 0.17,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          'MacBook Pro 2015',
                          style: TextStyles.StoreProfileText,
                        ),
                       
                        Text('\$1009',
                            style: TextStyle(
                                fontSize: 16,
                                color: ButtonColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat')),
                      ]),
                    ),
                 ),
                      
                      
                      
                  GestureDetector(
                    onTap: (){
                        //  Get.toNamed(RouteName.storeproduct);
                      Get.to(
                        Storeproduct(),
                         duration: Duration(milliseconds: 400),
                                transition: Transition.fadeIn,
                      );
                    },
                    child: Container(
                      height: 230,
                      width: 170,
                      decoration: BoxDecoration(
                        //  color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(children: [
                        Image.asset(
                          'assets/images/Mac-img.png',
                          height: Get.height * 0.17,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          'MacBook Pro 2015',
                          style: TextStyles.StoreProfileText,
                        ),
                       
                        Text('\$1009',
                            style: TextStyle(
                                fontSize: 16,
                                color: ButtonColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat')),
                      ]),
                    ),
                  ),
                      
                      
                      GestureDetector(
                         onTap: (){
                            //  Get.toNamed(RouteName.storeproduct);
                      Get.to(
                        Storeproduct(),
                         duration: Duration(milliseconds: 400),
                                transition: Transition.fadeIn,
                      );
                    },
                        child: Container(
                                          height: 230,
                                          width: 170,
                                          decoration: BoxDecoration(
                        //  color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(children: [
                        Image.asset(
                          'assets/images/Dell-img.png',
                          height: Get.height * 0.17,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          'MacBook Pro 2015',
                          style: TextStyles.StoreProfileText,
                        ),
                                           
                        Text('\$1009',
                            style: TextStyle(
                                fontSize: 16,
                                color: ButtonColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat')),
                                          ]),
                                        ),
                      ),
                      
                  GestureDetector(
                     onTap: (){
                        //  Get.toNamed(RouteName.storeproduct);
                      Get.to(
                        Storeproduct(),
                         duration: Duration(milliseconds: 400),
                                transition: Transition.fadeIn,
                      );
                    },
                    child: Container(
                      height: 230,
                      width: 170,
                      decoration: BoxDecoration(
                        //  color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(children: [
                        Image.asset(
                          'assets/images/Dell-img.png',
                          height: Get.height * 0.17,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          'MacBook Pro 2015',
                          style: TextStyles.StoreProfileText,
                        ),
                       
                        Text('\$1009',
                            style: TextStyle(
                                fontSize: 16,
                                color: ButtonColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Montserrat')),
                      ]),
                    ),
                  ),
                      
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        
        ),
      ),
      bottomNavigationBar: Container(
          height: 90,
                  child: Stack(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(right: 170),
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
