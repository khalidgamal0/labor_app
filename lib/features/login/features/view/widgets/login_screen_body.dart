import 'package:flutter/material.dart';
import 'package:labor/features/login/features/view/widgets/login_sec_1.dart';
import 'login_sec_2.dart';

class LoginScreenBody extends StatelessWidget {
   LoginScreenBody({Key? key}) : super(key: key);

   var phoneController=TextEditingController();
   var passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginSec1(phoneController: phoneController, passController: passController,isRegister: false,nameController:TextEditingController() ),
                const SizedBox(height: 15,),
                const LoginSec2(isRegister:false,)
              ],
            ),
          ),


        ),
      ),
    );
  }
}


