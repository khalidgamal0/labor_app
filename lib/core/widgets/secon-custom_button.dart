import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/widgets/component/component.dart';

Widget secondCustomButton({required text,required function}) {
   function=function;
  return defaultMaterialButton(
    text: text,
    function:function,
    width: 85,
    height: 15,
    background: kPrimaryColor,
    radius: 40,
  );
}
