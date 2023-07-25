import 'package:flutter/material.dart';
import 'package:labor/features/login/features/view/widgets/login_sec_1.dart';
import 'login_sec_2.dart';

class LoginScreenBody extends StatelessWidget {
   LoginScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginSec1(isRegister: false),
                 SizedBox(height: 15,),
                 LoginSec2(isRegister:false,)
              ],
            ),
          ),


        ),
      ),
    );
  }
}


