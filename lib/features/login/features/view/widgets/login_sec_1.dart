import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:labor/core/utils/app_router.dart';

import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/component/component.dart';

class LoginSec1 extends StatelessWidget {
  const LoginSec1({
    super.key,
    required this.phoneController,
    required this.passController, required this.isRegister, required this.nameController,
  });

  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController passController;
  final  bool isRegister;


  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Center(
              child: Text(
                isRegister? 'Register': 'Login',
                style: Styles.textStyle28,
              )),
          const  SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
                'Please Enter your Phone and password \n to continue',
                textAlign: TextAlign.center,
                style: Styles.textStyle14,
              )),
          const  SizedBox(
            height: 15,
          ),
          if(isRegister)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const  Text('Full Name',style: Styles.textStyle16,),
                const SizedBox(
                  height: 8,
                ),
                defaultTextFormField(
                  controller: nameController,
                  hintText:'Enter your Name',
                  type: TextInputType.name,
                  suffixIcon: Icons.person,
                ),
                const  SizedBox(
                  height: 15,
                ),
              ],),
          const  Text('Phone',style: Styles.textStyle16,),
          const SizedBox(
            height: 8,
          ),
          defaultTextFormField(
            controller: phoneController,
            hintText:'Enter your phone',
            type: TextInputType.phone,
            suffixIcon: Icons.phone,
          ),
          const  SizedBox(
            height: 12,
          ),
          const  Text('Password',style: Styles.textStyle16,),
          const SizedBox(
            height: 8,
          ),
          defaultTextFormField(
            controller: passController,
            hintText:'Enter your Password',
            type: TextInputType.visiblePassword,
            suffixIcon: Icons.visibility_outlined,
          ),
          const SizedBox(
            height: 10,
          ),
          if(!isRegister)
           Align(
            alignment: Alignment.centerRight,
            child:   InkWell(

              onTap: () {
                GoRouter.of(context).push(AppRouter.kForgetPassword);
              },
              child:const Text('Forget Password ?',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),),
            ),
          ),





        ]);
  }
}
