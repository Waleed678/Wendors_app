import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BottomBarSelectedIcon extends StatelessWidget {
  const BottomBarSelectedIcon({
    required this.iconPath,
    Key? key,
  }) : super(key: key);
  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37, 
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // shadow color
                  spreadRadius: 5, // spread radius
                  blurRadius: 5, // blur radius
                  offset: Offset(0, 1), 
          )
        ]
      ),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.red,
        child: Image.asset(
          iconPath ?? '',
          height: Get.height * 0.028,
        ),
      ),
    );
  }
}

class BottomBarUnSelectedIcon extends StatelessWidget {
  const BottomBarUnSelectedIcon({
    required this.iconPath,
    Key? key,
  }) : super(key: key);

  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      iconPath ?? '',
      height: Get.height * 0.029,
    );
  }
}
