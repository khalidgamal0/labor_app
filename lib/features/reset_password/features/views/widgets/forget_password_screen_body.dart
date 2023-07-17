import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:labor/core/utils/app_router.dart';
import 'package:labor/core/widgets/custom_button.dart';

import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/component/component.dart';

class ForgetPasswordScreenBody extends StatelessWidget {
   ForgetPasswordScreenBody({Key? key}) : super(key: key);

var phoneController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},
        icon:const Icon(Icons.arrow_back,color: Colors.black,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                child: Text(
                   'Forget Password',
                  style: Styles.textStyle28,
                )),
            const  SizedBox(
              height: 10,
            ),
            const Center(
                child: Text(
                  'Enter your Phone Number\n to reset password.', textAlign: TextAlign.center,
                  style: Styles.textStyle14,
                )),
                const  SizedBox(
                  height: 24,
                ),
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
                  height: 48,
                ),
                CustomButton(buttonName: 'Reset Password',onTap:(){
                  GoRouter.of(context).push(AppRouter.kOtp);
                },radius: 8,)



              ]),
        ),
      ),
    );
  }
}
