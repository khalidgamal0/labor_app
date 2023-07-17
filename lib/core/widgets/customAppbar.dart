import 'package:flutter/material.dart';

import '../utils/text_style.dart';

AppBar customAppbar({required BuildContext context,required title}) {
  return AppBar(

    leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: (){
      Navigator.pop(context);
    },),
    titleSpacing: 85,
    title: Text(
      title,
      style: Styles.textStyle18.copyWith(
          fontWeight: FontWeight.w700),
    ),
  );
}
