import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/Colors.dart';
import 'package:wendors_app/core/utils/style.dart';

class OnBoardingButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  const OnBoardingButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.loading = false, 
    required String buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 140,
          height: 50,
          decoration: BoxDecoration(
              color: ButtonColor, borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Text(title, style: TextStyles.ButtonText),
          )),
    );
  }
}


class Button extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  const Button({
    Key? key,
    required this.onTap,
    required this.title,
    this.loading = false, 
   // required String buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 822,
          height: 60,
          decoration: BoxDecoration(
               boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 2.0,
                          spreadRadius: 1,
                          offset: Offset(0, 01)  
                        ),
                      ],
              color: ButtonColor, borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Hero(
               tag: 'imageHero',
                
              child: Text(title, style: TextStyles.ButtonText)),
          )),
    );
  }
}




class CreateAccountButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  const CreateAccountButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.loading = false, 
    //required String buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: Get.width,
          height: 60,
          decoration: BoxDecoration(
             boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 2.0,
                          spreadRadius: 1,
                          offset: Offset(0, 01)  
                        ),
                      ],
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Text(title, style: TextStyles.CreateAccountButtonText),
          )),
    );
  }
}