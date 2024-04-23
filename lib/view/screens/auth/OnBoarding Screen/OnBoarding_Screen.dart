import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/colors.dart';
import 'package:wendors_app/core/utils/style.dart';
import 'package:wendors_app/view/screens/auth/wellcome_screen.dart';

class Onlineshoppingscreen extends StatefulWidget {
  const Onlineshoppingscreen({Key? key}) : super(key: key);

  @override
  State<Onlineshoppingscreen> createState() => _OnlineshoppingscreenState();
}

class _OnlineshoppingscreenState extends State<Onlineshoppingscreen> {
  int currentIndex = 0;

  void changeImage() {
    setState(() {
      currentIndex = (currentIndex + 1) % 3;
      }
    );
  }

  void changeTitle() {
    setState(() {
      currentIndex = (currentIndex + 1) % 3;
  });
  }

  Widget buildDot(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      width: currentIndex == index ? 25 : 10,
      height: 9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: currentIndex == index ? ButtonColor : Colors.black12,
      ),
    );
  }

  String getButtontext() {
    return currentIndex == 2 ? 'Get Started' : 'Next';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BgColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Image.asset('assets/images/OnbardingShadow-img.png'),
            ),
            SizedBox(height: Get.height * 0.05),
            Hero(
              tag: 'imageTag',
              child: Image.asset(
                currentIndex == 0
                    ? 'assets/images/OnlineShopping-img.png'
                    : currentIndex == 1
                    ? 'assets/images/MakeTheOrder-img.png'
                    : 'assets/images/GetTheOrder-img.png',
                    // : currentIndex == 2    
                    // ? 'assets/images/GetTheOrder-img.png'
                    
                height: Get.height * 0.3,
              ),
            ),
            SizedBox(height: Get.height * 0.05),
            Hero(
              tag: 'imageTag',
              child: Text(
                currentIndex == 0
                    ? "ONLINE SHOPPING "
                    : currentIndex == 1
                        ? 'MAKE THE ORDER '
                        : 'GET THE ORDER ',
                style: TextStyles.OnBoardingTitle,
              ),
            ),
            SizedBox(height: Get.height * 0.03),
            Text(
              'Lorem ipsum dolor sit amet, adipiscing elit. Maecenas congue, consectetur adipiscing Maecenas congue',
              style: TextStyles.OnboardingParagraph,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),

             SizedBox(height: Get.height * 0.06,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++) buildDot(i),
              ],
            ),

             SizedBox(
              height: Get.height * 0.03,
            ),

          
           
          ],
        ),
      ),
      bottomNavigationBar: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Image.asset('assets/images/OnbardingShadow-img1.png', height: Get.height * 0.13,),
                  ),

                  
                  
                  SizedBox(
                    width: 155,
                   height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                         primary: ButtonColor, 
                         onPrimary: Colors.white
                      ),
                      onPressed: () {
                        // changeImage();
                        // changeTitle();
                       if(currentIndex!=2){
                        currentIndex++;
                       }else{
                        Get.to(Wellcomescreen());
                       }
                        setState(() {
                          
                        });
                      },
                      child: Text(getButtontext(), style: TextStyles.ButtonText,), 
                    ),
                  ),
                ],
              ),
    );
  }
}
