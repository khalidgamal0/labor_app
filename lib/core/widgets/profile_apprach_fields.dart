import 'package:flutter/material.dart';

import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/component/component.dart';

class ProfileApproachFields extends StatelessWidget {
   ProfileApproachFields({
    super.key, required this.text,  this.hintText='',  this.maxLines=1,this.suffix,  this.suffixIconColor=Colors.grey,
  });
  final String text;
  final String hintText;
  final int maxLines;
   IconData? suffix;
   final Color suffixIconColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Text(text,style: Styles.textStyle16,),
        const SizedBox(height: 8,),
        defaultTextFormField(
          maxLines: maxLines,
          suffixIconColor: suffixIconColor,
          suffixIcon: suffix,
          hintText:hintText,
          textStyle: Styles.textStyle16,
        ),
        const SizedBox(height: 18,),
      ],);
  }
}
