import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:labor/core/utils/app_router.dart';

import '../../../../../constant.dart';
import '../../../../../core/widgets/custom_button.dart';

class OnBoardingSec2 extends StatelessWidget {
  const OnBoardingSec2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('By creating an account, you agree to our',style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w700,
            fontSize: 12
        ),),
        const SizedBox(
          height: 5,
        ),
        InkWell(
          onTap: (){},
          child: const Text('Term and Conditions',style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 12

          ),),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
          buttonName: 'Enter',
          onTap: (){
            GoRouter.of(context).push(AppRouter.kLoginScreen);
          },
        ),
      ],
    );
  }
}
