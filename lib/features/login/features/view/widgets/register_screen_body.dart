import 'package:flutter/material.dart';
import 'package:labor/features/login/features/view/widgets/login_sec_1.dart';
import 'login_sec_2.dart';

class RegisterScreenBody extends StatelessWidget {
   RegisterScreenBody({Key? key, required this.isRegister,}) : super(key: key);
  final  bool isRegister;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(children: [
              LoginSec1(isRegister: isRegister,),
              const SizedBox(height: 15,),
               LoginSec2(isRegister:isRegister ,)
            ]),
          ),
        ),
      ),
    );
  }
}
