import'package:flutter/material.dart';
import 'package:wendors_app/core/utils/colors.dart';

class favouritescreen extends StatefulWidget {
  const favouritescreen({super.key});

  @override
  State<favouritescreen> createState() => _favouritescreenState();
}

class _favouritescreenState extends State<favouritescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BgColor,
     appBar: AppBar(title: Text('Favourite Products'),
      backgroundColor: BgColor,
      centerTitle: true,),
    );
  }
}