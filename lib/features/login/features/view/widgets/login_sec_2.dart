import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:labor/core/utils/app_router.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/custom-_sing_another.dart';

class LoginSec2 extends StatelessWidget {
  const LoginSec2({
    super.key, required this.isRegister,
  });
final bool isRegister;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10,),
        const Center(child:   Text('OR',style: Styles.textStyleOr,)),
        const SizedBox(height: 8,),
        CustomSignOr(onTap: (){},text:'Facebook',image:AssetsData.faceBook,),
        const SizedBox(height: 12,),
        CustomSignOr(onTap: (){},text:'Google',image:AssetsData.google,),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don\'t Have Account ? ',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w400),),
            InkWell(
                onTap: (){ GoRouter.of(context).push(isRegister?AppRouter.kLoginScreen:AppRouter.kRegisterScreen);},
                child: Text(isRegister?'Sign In':'Sign Up',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w700)))
          ],),
      ],
    );
  }
}
