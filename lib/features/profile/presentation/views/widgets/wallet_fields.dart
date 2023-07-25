import 'package:flutter/material.dart';
import 'package:labor/constant.dart';

import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/custom_button.dart';

class WalletFields extends StatelessWidget {
  const WalletFields({
    super.key, required this.buttonName, required this.text,  this.buttonColor=kPrimaryColor,
  });

  final String buttonName;
  final String text;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color:const Color(0xffDFDFDF))
      ),
      child: Padding(
        padding:  const EdgeInsets.only(left: 25,right: 15,top: 15,bottom:12),
        child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(buttonName: buttonName,width: 150,height:40 ,radius: 16,buttonColor: buttonColor,buttonColorName:const Color(0xffF9FFF6)),
                  const  Text('2 hr',style: Styles.textStyle12,)
                ],),
              const  SizedBox(height: 8,),
              Text(text,style: Styles.textStyle14,)
            ]),
      ),
    );
  }
}
