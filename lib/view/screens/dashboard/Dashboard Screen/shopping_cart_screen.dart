import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/routes/routes.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/dashboard_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/shopping_detail_screen.dart';
import 'package:wendors_app/widgets/Button.dart';
import 'package:wendors_app/widgets/bottomBar/bottomnavigationbar.dart';

import '../../../../core/utils/colors.dart';

class Shoppingcart extends StatefulWidget {
  const Shoppingcart({super.key});

  @override
  State<Shoppingcart> createState() => _ShoppingcartState();
}

class _ShoppingcartState extends State<Shoppingcart> {
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
          preferredSize: Size(Get.width, 85),
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
                  padding: const EdgeInsets.only(left: 15,top: 10),
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
                              padding: const EdgeInsets.only(right: 20, top: 10),
                              child: Text(
                                'Cart',
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
                   padding: const EdgeInsets.only(top: 75 , left: 20),
                   child: Text('Cart Items' , style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                 )
               
              ],
            ),
          ),
        ),
      ),


      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15,),
        child: SingleChildScrollView(
          child: Column(children: [
            ///////////////////////////////////  MAC BOOK ////////////////////////////////////////////////////////////
          
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 10,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    height: 115,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 130, top: 10),
                      child: Row(children: [
                     const   Column(
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
                            // SizedBox(
                            //   height: Get.height * 0.01,
                            // ),
                            Text(
                              'Lorem Ipsum dolor sit amet,consectetur',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black38,
                                  fontSize: 8),
                            ),
                            Text(
                              'Quantity: 2',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Price:  ',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11),
                                ),
                                Text(
                                  '\$1099',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', color: ButtonColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                          ],
                        ),
          
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: 
                          
     ///////////////////////////   DIALOG BOX  //////////////////////////////////////////
                          GestureDetector(
                             onTap: (){
                            showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            
                            content: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Text(
                                  'Are you sure you want to delete this',
                                 style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat'),
                                      ),
                            ),
                            actions: [

                            SizedBox(
                              height: Get.height * 0.02,
                            ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('No'),
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
                                          Navigator.of(context).pop();
                                          //  Get.toNamed(RouteName.orderscreen);
                                          // Get.to(Orderscreen());
                                        }, child: Text('Yes'),
                                          style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          onPrimary: Colors.white),
                                        ),
                                  )
                                ],
                              )
                            ],
                          );
                        }); },
    /////////////////////////   DIALOG BOX END   //////////////////////////////////////////                    
                             
                            child: Image.asset('assets/images/Delete-img.png', height: Get.height * 0.07,)),
                        )
                      ],)
          
                      ]),
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child:
                   Container(
                    // width: 140,
                    // height: 120,
                    child: SizedBox(
                      height: Get.height * 0.15, width: Get.width * 0.34,
                      child: Image.asset(
                        'assets/images/Electronic-devices.png',
                        //  height: 130,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          
            ///////////////////////////////////  MAC BOOK  End ////////////////////////////////////////////////////////////
          
           SizedBox(
            height: Get.height * 0.01,
           ),
          
          
          ///////////////////////////////////  DELL ////////////////////////////////////////////////////////////
          
             Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 10,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    height: 115,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 130, top: 10),
                      child: Row(children: [
                     const   Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dell 2018',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // SizedBox(
                            //   height: Get.height * 0.01,
                            // ),
                            Text(
                              'Lorem Ipsum dolor sit amet,consectetur',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black38,
                                  fontSize: 8),
                            ),
                            Text(
                              'Quantity: 2',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Price:  ',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11),
                                ),
                                Text(
                                  '\$1099',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', color: ButtonColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                          ],
                        ),
          
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: 
                          GestureDetector(
                              onTap: (){
                            showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            
                            content: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Text(
                                  'Are you sure you want to delete this',
                                 style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat'),
                                      ),
                            ),
                            actions: [

                            SizedBox(
                              height: Get.height * 0.02,
                            ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('No'),
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
                                          Navigator.of(context).pop();
                                          //  Get.toNamed(RouteName.orderscreen);
                                          // Get.to(Orderscreen());
                                        }, child: Text('Yes'),
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
    /////////////////////////   DIALOG BOX END   //////////////////////////////////////////                    
                             },
                            child: Image.asset('assets/images/Delete-img.png', height: Get.height * 0.07,)),
                        )
                      ],)
          
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child:

                   Container(
                   
                    // width: 140,
                    // height: 120,
                    child: SizedBox(
                      height: Get.height * 0.15, width: Get.width * 0.34,
                      child: Image.asset(
                        'assets/images/1.png',
                        //  height: 130,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),



                 
                ),
              ],
            ),
          
          ///////////////////////////////////  DELL ////////////////////////////////////////////////////////////
          
             SizedBox(
            height: Get.height * 0.01,
           ),
          
          ///////////////////////////////////  MAC BOOK  ////////////////////////////////////////////////////////////
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 10,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    height: 115,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 130, top: 10),
                      child: Row(children: [
                     const   Column(
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
                            // SizedBox(
                            //   height: Get.height * 0.01,
                            // ),
                            Text(
                              'Lorem Ipsum dolor sit amet,consectetur',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black38,
                                  fontSize: 8),
                            ),
                            Text(
                              'Quantity: 2',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Price:  ',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11),
                                ),
                                Text(
                                  '\$1099',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat', color: ButtonColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                          ],
                        ),
          
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: 
                          GestureDetector(
                              onTap: (){
                            showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            
                            content: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Text(
                                  'Are you sure you want to delete this',
                                 style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat'),
                                      ),
                            ),
                            actions: [

                            SizedBox(
                              height: Get.height * 0.02,
                            ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('No'),
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
                                          Navigator.of(context).pop();
                                          //  Get.toNamed(RouteName.orderscreen);
                                          // Get.to(Orderscreen());
                                        }, child: Text('Yes'),
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
    /////////////////////////   DIALOG BOX END   //////////////////////////////////////////                    
                             },
                            child: Image.asset('assets/images/Delete-img.png', height: Get.height * 0.07,)),
                        )
                      ],)
          
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child:
                  Container(
                    child: SizedBox(
                      height: Get.height * 0.15, width: Get.width * 0.34,
                      child: Image.asset(
                        'assets/images/Electronic-devices.png',
                        //  height: 130,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                
                ),
              ],
            ),
          /////////////////////////////////// MAC BOOK  ////////////////////////////////////////////////////////////
          
          
          SizedBox( height: Get.height * 0.01, ),
           
                 
           
           
            Row(
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text('Order Details',
               style: TextStyles.TitleText,
              )
            ],),
          
            SizedBox( height: Get.height * 0.02, ),
          
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Order Details',
               style: TextStyle(fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,),
              ),
                Text('06:00 PM',
               style: TextStyle(fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,),
              ),
          
            ],),
          
            SizedBox( height: Get.height * 0.01, ),
          
          
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Order Date',
               style: TextStyle(fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,),
              ),
              Text('23/05/2023',
               style: TextStyle(fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,),
              ),
            ],),
          
            SizedBox( height: Get.height * 0.01, ),
          
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Sub Total',
               style: TextStyle(fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,),
              ),
              Text('\$89.99',
               style: TextStyle(fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,),
              ),
            ],),
          
             SizedBox( height: Get.height * 0.01, ),
          
          
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Delivery Fee',
               style: TextStyle(fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,),
              ),
              Text('\$10.00',
               style: TextStyle(fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,),
              ),
            ],),
          
             SizedBox( height: Get.height * 0.01, ),
          
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Grand Total',
               style: TextStyle(fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,),
              ),
              Text('\$99.99',
               style: TextStyle(fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,),
              ),
            ],),
            SizedBox(
              height: Get.height * 0.1,
            ),
           
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
                          // Get.toNamed(RouteName.shippingdetail);
                          Get.to(Shoppingdetail(),
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
