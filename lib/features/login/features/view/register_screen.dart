import 'package:flutter/material.dart';
import 'package:labor/features/login/features/view/widgets/register_screen_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  RegisterScreenBody(isRegister: true,);
  }
}
