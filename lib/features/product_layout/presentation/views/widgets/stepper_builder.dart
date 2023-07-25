import 'package:flutter/material.dart';

class StepperBuilder extends StatelessWidget {
  const StepperBuilder({
    super.key, required this.text1, required this.text2, required this.color,
  });

  final String text1;
  final String text2;
  final Color  color;


  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      CircleAvatar(
        backgroundColor:color,
        radius:10,
        child: Text(text1,style: const TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Colors.white),),),
      const SizedBox(width: 5,),
      Text(text2,style:TextStyle(fontSize: 12,fontWeight:FontWeight.w700,color:color)),
    ],);
  }
}
