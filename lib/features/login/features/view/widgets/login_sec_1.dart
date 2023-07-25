import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:labor/core/utils/app_router.dart';
import 'package:labor/features/login/features/manger/auth_cubit.dart';

import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/component/component.dart';
import '../../../../../core/widgets/custom_button.dart';

class LoginSec1 extends StatelessWidget {
  const LoginSec1({super.key, required this.isRegister});

  final bool isRegister;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          var formKey = GlobalKey<FormState>();
          TextEditingController nameController=TextEditingController();
          TextEditingController phoneController=TextEditingController();
          TextEditingController passController=TextEditingController();
          var cubit = AuthCubit.get(context);
          return Form(
            key: formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Text(
                        isRegister ? 'Register' : 'Login',
                        style: Styles.textStyle28,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                      child: Text(
                        'Please Enter your Phone and password \n to continue',
                        textAlign: TextAlign.center,
                        style: Styles.textStyle14,
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  if(isRegister)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Full Name', style: Styles.textStyle16,),
                        const SizedBox(
                          height: 8,
                        ),
                        defaultTextFormField(
                          controller: nameController,
                          hintText: 'Enter your Name',
                          type: TextInputType.name,
                          suffixIcon: Icons.person,
                          validate: (value) {
                            if (value.isEmpty) {
                              return ('Email must not empty');
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],),
                  const Text('Phone', style: Styles.textStyle16,),
                  const SizedBox(
                    height: 8,
                  ),
                  defaultTextFormField(
                    controller: phoneController,
                    hintText: 'Enter your phone',
                    type: TextInputType.phone,
                    suffixIcon: Icons.phone,
                    validate: (value) {
                      if (value.isEmpty) {
                        return ('Email must not empty');
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text('Password', style: Styles.textStyle16,),
                  const SizedBox(
                    height: 8,
                  ),
                  defaultTextFormField(
                    controller: passController,
                    hintText: 'Enter your Password',
                    type: TextInputType.visiblePassword,
                    suffixIcon: Icons.visibility_outlined,
                    validate: (value) {
                      if (value.isEmpty) {
                        return ('Email must not empty');
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if(!isRegister)
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kForgetPassword);
                        },
                        child: const Text('Forget Password ?', style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),),
                      ),
                    ),
                  const SizedBox(height: 15,),
                  CustomButton(buttonName: isRegister ? 'Register' : 'Login',
                    radius: 8,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        cubit.userRegister(context,
                            name: nameController.text,
                            phone: '+2${phoneController.text}',
                            password: passController.text
                        );
                      }
                      // GoRouter.of(context).push(AppRouter.kHomeScreen);
                      // GoRouter.of(context).push(AppRouter.kLayoutScreen);
                    },),
                  const SizedBox(height: 15,),
                ]),
          );
        },
      ),
    );
  }
}
