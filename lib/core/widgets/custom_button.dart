import 'package:flutter/material.dart';
import 'package:labor/constant.dart';

class CustomButton extends StatelessWidget {
   const CustomButton({super.key, required this.buttonName, this.onTap,  this.radius=16,  this.width=double.infinity,  this.height=55,  this.buttonColor=kPrimaryColor,  this.buttonColorName=Colors.white,});
  final String buttonName;
  final VoidCallback? onTap;
   final double radius;
   final double width;
   final double height;
   final Color buttonColor;
   final Color buttonColorName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(radius),
            ),
            height: height,
            width:width,
            child: Center(
              child: Text(
                buttonName,
                style:  TextStyle(
                  color: buttonColorName,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ),
        );
  }
}