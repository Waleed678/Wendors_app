import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wendors_app/core/utils/style.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  // final bool obscureText;
  final TextAlign textAlign;
  // final Widget prefixIcon;
  //final String? Function(String?) validator;

  const CustomTextField({
    Key? key,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    required this.hintText,
    // required this.obscureText,
    // required this.prefixIcon,
    //required this.validator,
    this.textAlign = TextAlign.end,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: Get.width,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
               spreadRadius: 0,
               blurRadius: 5,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: TextFormField(
          //style: TextStyles.TextFieldText,
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.top,
          keyboardType: widget.keyboardType,
          // obscureText: widget.obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(16.0),
            suffixIcon: widget.suffixIcon,
            // alignLabelWithHint: true,
            hintStyle: TextStyles.hinttextstyle,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.transparent),
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.transparent),
            ),

            filled: true,
            fillColor: Colors.white,
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          // validator: validator,
        ),
      ),
    );
  }
}




class ButtomSheetTextField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextAlign textAlign;
  // final Widget prefixIcon;
  //final String? Function(String?) validator;

  const ButtomSheetTextField({
    Key? key,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    required this.hintText,
    required this.obscureText,
    // required this.prefixIcon,
    //required this.validator,
    this.textAlign = TextAlign.end,
  }) : super(key: key);

  @override
  State<ButtomSheetTextField> createState() => _ButtomSheetTextFieldState();
}

class _ButtomSheetTextFieldState extends State<ButtomSheetTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
    //  width: Get.width,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 9,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: TextFormField(
          //style: TextStyles.TextFieldText,
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.top,
          keyboardType: widget.keyboardType,
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            //contentPadding: EdgeInsets.all(16.0),
            suffixIcon: widget.suffixIcon,
            // alignLabelWithHint: true,
            hintStyle: TextStyles.hinttextstyle,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.transparent),
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.transparent),
            ),

            filled: true,
            fillColor: Colors.white,
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          // validator: validator,
        ),
      ),
    );
  }
}





class ShortTextField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  // final bool obscureText;
  final TextAlign textAlign;
  // final Widget prefixIcon;
  //final String? Function(String?) validator;

  const ShortTextField({
    Key? key,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    required this.hintText,
    // required this.obscureText,
    // required this.prefixIcon,
    //required this.validator,
    this.textAlign = TextAlign.end,
  }) : super(key: key);

  @override
  State<ShortTextField> createState() => _ShortTextFieldState();
}

class _ShortTextFieldState extends State<ShortTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: Get.width * 0.39,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
               spreadRadius: 0,
               blurRadius: 5,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: TextFormField(
          //style: TextStyles.TextFieldText,
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.top,
          keyboardType: widget.keyboardType,
          // obscureText: widget.obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(16.0),
            suffixIcon: widget.suffixIcon,
            // alignLabelWithHint: true,
            hintStyle: TextStyles.hinttextstyle,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.transparent),
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.transparent),
            ),

            filled: true,
            fillColor: Colors.white,
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          // validator: validator,
        ),
      ),
    );
  }
}
