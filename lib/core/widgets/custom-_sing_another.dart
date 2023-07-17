import 'package:flutter/material.dart';
import 'package:labor/core/utils/text_style.dart';

import '../../constant.dart';

class CustomSignOr extends StatelessWidget {
  const CustomSignOr({Key? key, required this.onTap, required this.image, required this.text}) : super(key: key);
  final VoidCallback onTap;
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 64,
        width: double.infinity,
        decoration:  BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(.3)),
          borderRadius: const BorderRadius.all(Radius.circular(8),),
          color: kFilledColor,

        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image(image:AssetImage(image)),
             const SizedBox(width: 15,),
              Text(text,style: Styles.textStyle18,),

        ]),
      ),
    );
  }
}
