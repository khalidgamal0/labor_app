import 'package:flutter/material.dart';
import 'package:labor/constant.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key, required this.buttonName, this.onTap,  this.radius=16,});
  final String buttonName;
  final VoidCallback? onTap;
   double radius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(radius),
            ),
            height: 55,
            width: double.infinity,
            child: Center(
              child: Text(
                buttonName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ),
        );
  }
}