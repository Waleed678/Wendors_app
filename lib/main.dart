import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:wendors_app/view/screens/auth/splash_screen.dart';
import 'package:wendors_app/widgets/bottomBar/bottomnavigationbar.dart';
import 'routes/routes_names.dart';


void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Spalashscreen(),
      getPages : AppRoutes.appRoutes()  

      
    );
  }
}