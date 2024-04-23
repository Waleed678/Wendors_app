import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/update_profile_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/userprofile_updated_screen.dart';
import 'package:wendors_app/widgets/Button.dart';
import 'package:wendors_app/widgets/TextFormField.dart';

import '../../../../core/utils/style.dart';
import '../../../../routes/routes.dart';

class Updateprofile extends StatefulWidget {
  const Updateprofile({super.key});

  @override
  State<Updateprofile> createState() => _UpdateprofileState();
}

class _UpdateprofileState extends State<Updateprofile> {
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
          preferredSize: Size(Get.width, 150),
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
                                'User Profile',
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
                  padding: const EdgeInsets.only(top: 75, left: 150),
                  child: Stack(children: [
                    Image.asset(
                      'assets/images/Profile-img.png',
                      height: 120,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90, left: 70),
                      child: CircleAvatar(
                          maxRadius: 20,
                          backgroundColor: Colors.red,
                          child: Image.asset(
                            'assets/images/camra-img.png',
                            height: Get.height * 0.02,
                          )),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'User Information',
                  style: TextStyles.UserProfileText,
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyles.UserProfileText,
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            CustomTextField(
              hintText: 'Name',
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyles.UserProfileText,
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            CustomTextField(
              hintText: 'Email',
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Mobile Number',
                  style: TextStyles.UserProfileText,
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            CustomTextField(
              hintText: 'Mobile Number',
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0, right: 220),
              child: Image.asset(
                'assets/images/OnbardingShadow-img1.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
              child: Button(
                  onTap: () {
                    //  Get.toNamed(RouteName.userprofileupdated);
                    Get.to(
                      Userprofileupdated(),
                      duration: Duration(milliseconds: 400),
                      transition: Transition.fadeIn,
                    );
                  },
                  title: 'Update'),
            )
          ],
        ),
      ),
    );
  }
}
