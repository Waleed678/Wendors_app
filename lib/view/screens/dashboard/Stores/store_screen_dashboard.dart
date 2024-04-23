import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/shopping_cart_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Stores/store_profile_screen.dart';
import 'package:wendors_app/widgets/TextFormField.dart';

class ButtonController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void selectButton(int index) {
    selectedIndex.value = index;
    update();
  }
}

class storescreendashboard extends StatelessWidget {
  final ButtonController buttonController = Get.put(ButtonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // extendBody: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Container(
            color: BgColor,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 290, top: 25),
                child: Image.asset(
                  'assets/images/OnbardingShadow-img.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 180),
                child: Text('Stores', style: TextStyles.ParagraphStyle),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 350),
                child: GestureDetector(
                  onTap: () {
                    Get.to(Shoppingcart());
                  },
                  child: Image.asset(
                    'assets/images/Shopping-card.png',
                    height: Get.height * 0.03,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 95,
                  left: 15,
                  right: 15,
                ),
                child: SizedBox(
                    height: Get.height * 0.08,
                    child: Container(
                      color: Colors.transparent,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(5, (index) {
                          String imagePath;

                          // Assign different image paths based on the button index
                          switch (index) {
                            case 0:
                              imagePath = 'assets/images/All-icon.png';
                              break;
                            case 1:
                              imagePath = 'assets/images/Electronics-image.png';
                              break;
                            case 2:
                              imagePath = 'assets/images/Shoes-img.png';
                              break;
                            case 3:
                              imagePath = 'assets/images/clothes.png';
                              break;
                            case 4:
                              imagePath = 'assets/images/furniture.png';
                              break;

                            default:
                              imagePath = 'assets/images/All-icon.png';
                          }

                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.0, vertical: 5.0),
                            child: GetBuilder<ButtonController>(
                              builder: (controller) => ElevatedButton(
                                onPressed: () {
                                  controller.selectButton(index);
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    index == controller.selectedIndex.value
                                        ? ButtonColor
                                        : Colors.white,
                                  ),
                                  elevation: MaterialStateProperty.all(
                                      2.0), // Adjust the elevation as needed
                                  shadowColor: MaterialStateProperty.all(Colors
                                      .black), // Adjust the shadow color as needed
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Add your image widget here
                                    Image.asset(
                                      imagePath,
                                      height: 27.0,
                                      width: 27.0,
                                    ),
                                    SizedBox(
                                        width:
                                            5.0), // Adjust the vertical spacing between image and text
                                    Text(
                                      _getButtonText(index),
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: index ==
                                                controller.selectedIndex.value
                                            ? Colors.white
                                            : Colors.black45,
                                      ),
                                    ),
                                  ],
                                ),
                              
                              ),
                            ),
                          );
                        }),
                      ),
                    )),
              ),
            ]),
          ),
          Container(
            color: BgColor,
            height: Get.height * 0.02,
          ),
          Container(
            color: BgColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: CustomTextField(
                hintText: '   Search here...',
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
          ),
          Expanded(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              extendBody: true,
               body:  Obx(() {
                return _buildSelectedContent();
              }),
            ),
          )
       
        ],
      ),
    );
  }

  String _getButtonText(int index) {
    switch (index) {
      case 0:
        return 'All';
      case 1:
        return 'Electronics';
      case 2:
        return 'Shoes';
      case 3:
        return 'Clothes';
      case 4:
        return 'Furniture';
      default:
        return '';
    }
  }

  Widget _buildSelectedContent() {
    switch (buttonController.selectedIndex.value) {
      case 0:
        return All();
      case 1:
        return Electronics();
      case 2:
        return Shoes();
      case 3:
        return Clothes();
      case 4:
        return Furniture();
      default:
        return Container();
    }
  }
}

class All extends StatelessWidget {
   All({Key? key}) : super(key: key);

   final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: BgColor,
        height: Get.height,
        margin: EdgeInsets.only(left: 12, right: 12, top: 8),
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            Stack(children: [
              GestureDetector(
                onHorizontalDragEnd: (DragEndDetails details){
                   if (details.primaryVelocity! > 0){
                        print('Swipe right to left');              
                    // Get.to(storescreendashboard());
                   } else if ( details.primaryVelocity! < 0 ){          
                       Get.to(Storeprofile());
                   }
                   
                   },
               
                child: Container(
                  height: 450,
                  width: 430,
                  child: Image.asset(
                    'assets/images/Apple-store.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 10, top: 310),
                  child: Container(
                    width: Get.width * 0.89,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        gradient: LinearGradient(
                            colors: [Colors.transparent, Colors.black54],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 280, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Apple Store',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amit,consectetur adipiscing elit.Ut ut auctor nunc.',
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                        overflow: TextOverflow.ellipsis,
                        height: 1.5,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 350, left: 15, right: 15),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/Backward-icon.png',
                            height: Get.height * 0.08,
                          ),
                          Text(
                            'Swipe Left',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              overflow: TextOverflow.ellipsis,
                              height: 1.5,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          //  Get.toNamed(RouteName.storeprofile);
                          Get.to(
                            Storeprofile(),
                            duration: Duration(milliseconds: 400),
                            transition: Transition.rightToLeft,
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/Forward-icon.png',
                                height: Get.height * 0.08),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                'Swipe Right',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.02,
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ]),
      
      
        ////////////////////////////// SECOND PRODUCT ///////////////////////
        
            Stack(children: [
             GestureDetector(
                onHorizontalDragEnd: (DragEndDetails details){
                   if (details.primaryVelocity! > 0){
                        print('Swipe right to left');              
                    // Get.to(storescreendashboard());
                   } else if ( details.primaryVelocity! < 0 ){          
                       Get.to(Storeprofile());
                   }
                   
                   },
               
                child: Container(
                  height: 470,
                  width: 440,
                  child: Image.asset(
                    'assets/images/Apple-store.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 10, top: 330),
                  child: Container(
                    width: Get.width * 0.89,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        gradient: LinearGradient(
                            colors: [Colors.transparent, Colors.black54],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 300, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Apple Store',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amit,consectetur adipiscing elit.Ut ut auctor nunc.',
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                        overflow: TextOverflow.ellipsis,
                        height: 1.5,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 370, left: 15, right: 15),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/Backward-icon.png',
                            height: Get.height * 0.08,
                          ),
                          Text(
                            'Scrool Up',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              overflow: TextOverflow.ellipsis,
                              height: 1.5,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          //  Get.toNamed(RouteName.storeprofile);
                          Get.to(
                            Storeprofile(),
                            duration: Duration(milliseconds: 400),
                            transition: Transition.rightToLeft,
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/Forward-icon.png',
                                height: Get.height * 0.08),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                'Swipe Right',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.02,
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

///////////////////////////////   ALL CONTAINER END HERE  //////////////////////////

class Electronics extends StatelessWidget {
  const Electronics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Electronics',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
    );
  }
}

class Shoes extends StatelessWidget {
  const Shoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Shoes',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
    );
  }
}

class Clothes extends StatelessWidget {
  const Clothes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Clothes',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
    );
  }
}

class Furniture extends StatelessWidget {
  const Furniture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Furniture',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
    );
  }
}
