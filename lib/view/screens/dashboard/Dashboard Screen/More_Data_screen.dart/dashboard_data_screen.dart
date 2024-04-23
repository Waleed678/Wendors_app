import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/More_Data_screen.dart/Favourite_controller.dart';
import 'package:wendors_app/view/screens/dashboard/Stores/store_profile_screen.dart';

class seconddata extends StatefulWidget {
  seconddata({super.key, this.name = ""});
  String? name;

  @override
  State<seconddata> createState() => _seconddataState();
}

class _seconddataState extends State<seconddata> {
  final FavoriteController favoriteController = Get.put(FavoriteController());

  int count = 0;
  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void decrementCount() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: Get.height * 0.02,
          ),
          Container(
              height: 190,
              width: Get.width * 0.87,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(8)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/Electronic-devices.png',
                  fit: BoxFit.fill,
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MacBook Pro 2023 ${widget.name}',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    SizedBox(
                      width: Get.width * 0.7,
                      child: Text(
                        'Loream ipsum dolor amet, consectur adipising elit.Ut ut auctor nunc.Maecenas congue,lacusut aliquet ullamcorper magna tortor aliquet nisi,',
                        style: TextStyle(
                          height: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 3,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.012,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 2.0,
                                spreadRadius: 1,
                                offset: Offset(0, 01)),
                          ], color: Colors.red, shape: BoxShape.circle),
                        ),
                        Text('    Lorem ipsum dolor sit amet.')
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.012,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 2.0,
                                spreadRadius: 1,
                                offset: Offset(0, 01)),
                          ], color: Colors.red, shape: BoxShape.circle),
                        ),
                        Text('    Lorem ipsum dolor sit amet.')
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 2.0,
                                spreadRadius: 1,
                                offset: Offset(0, 01)),
                          ], color: Colors.red, shape: BoxShape.circle),
                        ),
                        Text('    Lorem ipsum dolor sit amet.')
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: Get.width * 0.01,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(Storeprofile());
                        },
                        child: Image.asset(
                          'assets/images/Mac-pic.png',
                          height: Get.height * 0.07,
                        ),
                      ),

                      Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 1),
                            ),
                          ],
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.only( top: 1),
                          child: Center(
                            child: IconButton(
                              icon: Obx(() {
                                return Icon(
                                  favoriteController.isFavorite.value
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: favoriteController.isFavorite.value
                                      ? Colors.red
                                      : null,
                                );
                              }),
                              onPressed: () {
                                favoriteController.toggleFavorite();
                              },
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: Get.height * 0.01,
                      ),

                      /////////////////////////  BOTTOM SHEET ////////////////////////////////////
                      GestureDetector(
                        child: Image.asset(
                          'assets/images/Stars.png',
                          height: Get.height * 0.07,
                        ),
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.white,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, top: 10),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [Text('Reviews (23)')],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 50,
                                            child: Divider(
                                              thickness: 3,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow[600],
                                            size: 30,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow[600],
                                            size: 30,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow[600],
                                            size: 30,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow[600],
                                            size: 30,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.black12,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.02,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              spreadRadius: 1,
                                              blurRadius: 9,
                                              offset: Offset(1, 1),
                                            ),
                                          ],
                                        ),
                                        child: TextField(
                                          maxLines: 3,
                                          decoration: InputDecoration(
                                            fillColor: Colors.white,
                                            filled: true,
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            hintText: 'Add comment',
                                            hintStyle: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black38),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.04,
                                      ),
                                      Divider(
                                        color: Colors.black12,
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/Profile-img.png',
                                                height: Get.height * 0.09,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: Get.width * 0.02,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 45),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Matthew Hayden',
                                                    style: TextStyles.TitleText,
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.01,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.01,
                                                  ),
                                                  Text(
                                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut autor nunc. Maecenas congue, lacus ut',
                                                    maxLines: 4,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      height: 1.5,
                                                      fontSize: 10,
                                                      color: Colors.black45,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.02,
                                      ),
                                      Divider(
                                        color: Colors.black12,
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/User-img.png',
                                                height: Get.height * 0.09,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: Get.width * 0.01,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 50),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Brett Lee',
                                                    style: TextStyles.TitleText,
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.01,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.01,
                                                  ),
                                                  Text(
                                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut autor nunc. Maecenas congue, lacus ut',
                                                    maxLines: 4,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      height: 1.5,
                                                      fontSize: 10,
                                                      color: Colors.black45,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.02,
                                      ),
                                      Divider(
                                        color: Colors.black12,
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/Profile-img.png',
                                                height: Get.height * 0.09,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: Get.width * 0.02,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 05),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Brett Lee',
                                                    style: TextStyles.TitleText,
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.01,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[600],
                                                        size: 25,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.01,
                                                  ),
                                                  Text(
                                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut autor nunc. Maecenas congue, lacus ut',
                                                    maxLines: 4,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      height: 1.5,
                                                      fontSize: 10,
                                                      color: Colors.black45,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      ////////////////////////////////////////////////   BOTTOM SHEET END ////////////////////////////////////
                      ///
                      Image.asset(
                        'assets/images/Share-icon.png',
                        height: Get.height * 0.07,
                      ),

                        Image.asset(
                      'assets/images/Down-icon.png',
                      height: Get.height * 0.07,
                    ),
                    ],
                  ),
                ),
              ],
            ),
          ),
         
        const  Padding(
            padding:  EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                Text(
                  '\$299.99',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ButtonColor,
                      fontSize: 26),
                ),
                // Row(
                //   children: [
                //     // Image.asset(
                //     //   'assets/images/Down-icon.png',
                //     //   height: Get.height * 0.07,
                //     // ),
                //   ],
                // ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: Get.width * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    decrementCount();
                  },
                  child: Image.asset(
                    'assets/images/-ive-icon.png',
                    height: Get.height * 0.06,
                  ),
                ),
                Text(
                  '$count',
                  style: TextStyle(fontSize: 24),
                ),
                GestureDetector(
                  onTap: () {
                    incrementCount();
                  },
                  child: Image.asset(
                    'assets/images/Plus-icon.png',
                    height: Get.height * 0.06,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 160,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Add to Cart'),
                          style: ElevatedButton.styleFrom(
                              primary: ButtonColor, onPrimary: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
