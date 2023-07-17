import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/component/component.dart';
import '../../../../../core/widgets/custom_button.dart';

class RestPasswordScreenBody extends StatelessWidget {
   RestPasswordScreenBody({Key? key}) : super(key: key);
   TextEditingController phoneController=TextEditingController();
   TextEditingController passController=TextEditingController();
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
                  'Reset Password',
                  style: Styles.textStyle28,
                )),
            const  SizedBox(
              height: 10,
            ),
            const Center(
                child: Text(
                  'Create strong and secured \n new password.',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle14,
                )),
            const  SizedBox(
              height: 15,
            ),
            const  Text('Password',style: Styles.textStyle16,),
            const SizedBox(
              height: 8,
            ),
            defaultTextFormField(
              controller: phoneController,
              hintText:'Enter Your Password',
              type: TextInputType.phone,
              suffixIcon: Icons.visibility_outlined,
            ),
            const  SizedBox(
              height: 12,
            ),
            const  Text('Confirm Password',style: Styles.textStyle16,),
            const SizedBox(
              height: 8,
            ),
            defaultTextFormField(
              controller: passController,
              hintText:'Enter Your Confirm Password',
              type: TextInputType.visiblePassword,
              suffixIcon: Icons.visibility_outlined,
            ),
            const SizedBox(
              height: 48,
            ),
                CustomButton(buttonName: 'Save Password',onTap:(){
                  GoRouter.of(context).push(AppRouter.kLoginScreen);
                },radius: 8,)
          ]),
        ),
      ),
    );
  }
}
