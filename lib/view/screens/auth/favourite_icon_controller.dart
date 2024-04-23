// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class FavouriteIconColor extends GetxController {
//   var icon = Icons.favorite.obs;
//   var iconcolor = Colors.black26.obs;
//   var isFilled = true.obs;

//   void favouriteiconcolor() {
//     isFilled.value = !isFilled.value;
//     icon.value = isFilled.value ? Icons.favorite : Icons.favorite_outline;
//     icon.value = isFilled.value ? Colors.red : Colors.black26;
//   }
// }




import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';


// class FavoriteController extends GetxController {
//   RxBool isFavorite = false.obs;
//   void toggleFavorite() {
//     isFavorite.value = !isFavorite.value;
//   }
// }
// class FavouriteIconColor extends GetxController {
//    var iconcolor = Colors.black26.obs;
//    var isBlue = true.obs;

//    void favouriteiconcolor(){
//     isBlue.value = !isBlue.value;
//     iconcolor.value = isBlue.value ? Colors.red : Colors.black26 ;
//    }
// }

class favoriteController extends GetxController {
  RxBool isFavorite = false.obs;

 void toggleFavorite(){
   isFavorite.toggle();
 }
}