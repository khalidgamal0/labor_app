import 'package:flutter/material.dart';

class Separated extends StatelessWidget {
  const Separated({
    super.key,  this.color= Colors.grey,
  });
 final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      decoration:  BoxDecoration(
          color:color,
      ),
    );
  }
}
