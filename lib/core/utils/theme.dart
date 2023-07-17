import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:labor/constant.dart';

ThemeData lightData = ThemeData(
  fontFamily:'Quicksand',
  scaffoldBackgroundColor: Colors.white,
  appBarTheme:  const AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      )),
  bottomNavigationBarTheme:const  BottomNavigationBarThemeData(
    elevation: 0,
    selectedItemColor: kPrimaryColor,
    unselectedItemColor: Color(0xffDFDFDF),
    type: BottomNavigationBarType.fixed,


  )
);
