import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeContainerColor extends GetxController {
   var containercolor = Colors.white.obs;
   var isBlue = true.obs;

   void changecontainerColor(){
    isBlue.value = !isBlue.value;
    containercolor.value = isBlue.value ? Colors.red : Colors.white ;
   }
}



class PakistanContainerColor extends GetxController {
   var pakistancontainercolor = Colors.white.obs;
   var isBlue = true.obs;

   void pakistanContainerColor(){
    isBlue.value = !isBlue.value;
    pakistancontainercolor.value = isBlue.value ? Colors.red : Colors.white ;
   }
}


class FrenchContainerColor extends GetxController {
   var frenchcontainercolor = Colors.white.obs;
   var isBlue = true.obs;

   void frenchContainerColor(){
    isBlue.value = !isBlue.value;
    frenchcontainercolor.value = isBlue.value ? Colors.red : Colors.white ;
   }
}









