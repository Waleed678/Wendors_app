import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:wendors_app/routes/routes.dart';
import 'package:wendors_app/view/screens/auth/OnBoarding%20Screen/OnBoarding_Screen.dart';
import 'package:wendors_app/view/screens/auth/create_account_screen.dart';
import 'package:wendors_app/view/screens/auth/enter_code_screen.dart';
import 'package:wendors_app/view/screens/auth/forgot_password_screen.dart';
import 'package:wendors_app/view/screens/auth/password_updated_screen.dart';
import 'package:wendors_app/view/screens/auth/signin_screen.dart';
import 'package:wendors_app/view/screens/auth/splash_screen.dart';
import 'package:wendors_app/view/screens/auth/wellcome_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/Card_details_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/Select_payement_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/dashboard_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/order_completed_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/shopping_cart_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/shopping_detail_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Orders/order_screen_dashboard.dart';
import 'package:wendors_app/view/screens/dashboard/Orders/Current/orderdetails_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/profile_screen_dashboard.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/userprofile_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/userprofile_updated_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Stores/store_product_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Stores/store_profile_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Stores/store_screen_dashboard.dart';
import 'package:wendors_app/widgets/bottomBar/bottomnavigationbar.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splash,
          page: () => Spalashscreen(),
        ),
         GetPage(
          name: RouteName.bottombar,
          page: () => bottomnavigationbar(),
        ),
        GetPage(
          name: RouteName.wellcome,
          page: () => Wellcomescreen(),
        ),
        GetPage(
          name: RouteName.onboardingscreen,
          page: () => Onlineshoppingscreen(),
        ),
        GetPage(
          name: RouteName.signin,
          page: () => Signinscreen(),
        ),
        GetPage(
          name: RouteName.createaccount,
          page: () => Createaccount(),
        ),
        GetPage(
          name: RouteName.entercode,
          page: () => Entercode(),
        ),
        GetPage(
          name: RouteName.onboardingscreen,
          page: () => Onlineshoppingscreen(),
        ),
        GetPage(
          name: RouteName.forgotpassword,
          page: () => Forgotpassword(),
        ),
        GetPage(
          name: RouteName.passwordupdated,
          page: () => Passwordupdated(),
        ),
        GetPage(
          name: RouteName.dashboard,
          page: () => Dashboardscreen(),
        ),
        GetPage(
          name: RouteName.carddetils,
          page: () => Carddetails(),
        ),
        GetPage(
          name: RouteName.ordercompleted,
          page: () => Ordercompleted(),
        ),
        GetPage(
          name: RouteName.selectpayement,
          page: () => Selectpayement(),
        ),
        GetPage(
          name: RouteName.shippingdetail,
          page: () => Shoppingdetail(),
        ),
        GetPage(
          name: RouteName.shoppingcart,
          page: () => Shoppingcart(),
        ),
        GetPage(
          name: RouteName.orderscreen,
          page: () => Orderscreen(),
        ),
        GetPage(
          name: RouteName.orderdetailscreen,
          page: () => Orderdetailscreen(),
        ),
        GetPage(
          name: RouteName.profilecreen,
          page: () => Profilescreen(),
        ),
        GetPage(
          name: RouteName.userprofile,
          page: () => Userprofile(),
        ),
        GetPage(
          name: RouteName.userprofileupdated,
          page: () => Userprofileupdated(),
        ),
        GetPage(
          name: RouteName.storescreen,
          page: () => storescreendashboard(),
        ),
        GetPage(
          name: RouteName.storeprofile,
          page: () => Storeprofile(),
        ),
        GetPage(
          name: RouteName.storeproduct,
          page: () => Storeproduct(),
        ),
      ];
}
