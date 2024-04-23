import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:wendors_app/view/screens/dashboard/Dashboard%20Screen/dashboard_screen.dart';
import 'package:wendors_app/view/screens/dashboard/Profile/profile_screen_dashboard.dart';
import 'package:wendors_app/view/screens/dashboard/Stores/store_screen_dashboard.dart';
import 'package:wendors_app/widgets/bottomBar/bottom_navigation.dart';

class bottomnavigationbar extends StatefulWidget {
  @override
  _bottomnavigationbarState createState() => _bottomnavigationbarState();
}

class _bottomnavigationbarState extends State<bottomnavigationbar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     extendBody: true,
      resizeToAvoidBottomInset: true,
      body: _buildPage(_selectedIndex),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.040, vertical: Get.height * 0.007),
        child: Card(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            decoration:
                 BoxDecoration(
                  color: Colors.transparent, 
                  boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 9,
                offset: Offset(0, 1),
              )
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: SizedBox(
                child: BottomNavigationBar(
                  elevation: 0,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.white,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: const [
                    BottomNavigationBarItem(
                      label: "",
                      icon: BottomBarUnSelectedIcon(
                        iconPath: 'assets/images/Dashboard-Unselected.png',
                      ),
                      activeIcon: BottomBarSelectedIcon(
                        iconPath: 'assets/images/Dashboard-Selected.png',
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: "",
                      icon: BottomBarUnSelectedIcon(
                        iconPath: 'assets/images/Store-Unselected.png',
                      ),
                      activeIcon: BottomBarSelectedIcon(
                        iconPath: 'assets/images/Store-Selected.png',
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: "",
                      icon: BottomBarUnSelectedIcon(
                        iconPath: 'assets/images/Profile-Unselected.png',
                      ),
                      activeIcon: BottomBarSelectedIcon(
                        iconPath: 'assets/images/SelectedProfile.png',
                      ),
                    ),
                   
                  ],
                  currentIndex: _selectedIndex,
                  onTap: _onItemTapped,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return Dashboardscreen(); // Replace with your actual home screen widget
      case 1:
        return storescreendashboard();
        //  Storesscreen(); // Replace with your actual shop screen widget
      case 2:
        return Profilescreen();
      // case 3:
      // return profilescreen(); // Replace with your actual QR code screen widget
      default:
        return Container();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the respective screens based on the selected index
    switch (index) {
      case 0:
        Dashboardscreen();
        break;
      case 1:
        storescreendashboard();
        break;
      case 2:
         Profilescreen();
        break;

      //case 3:
      // Navigate to QR Code screen
      //break;
    }
  }
}
