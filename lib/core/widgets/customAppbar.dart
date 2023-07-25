import 'package:flutter/material.dart';

import '../utils/text_style.dart';

AppBar customAppbar({required BuildContext context,required title,actionIcon,isOrder=false,isAddress=false,onPressed}) {
  return AppBar(

    leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: (){
      Navigator.pop(context);
    },),
    titleSpacing:isAddress||isOrder? 65:85,
    title: Text(
      title,
      style: Styles.textStyle18.copyWith(
          fontWeight: FontWeight.w700),
    ),
    actions: [
      if(isAddress)
      Padding(
        padding: const EdgeInsets.only(right: 15.0,top:2),
        child: IconButton(icon: Icon(actionIcon),onPressed: onPressed),
      ),
    ],
  );
}
