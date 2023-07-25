import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:labor/constant.dart';
import 'package:labor/core/utils/app_router.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_text_field/otp_text_field.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../login/features/manger/auth_cubit.dart';


class OtpBody extends StatelessWidget {
  const OtpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    String smsCode = '';

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},
          icon:const Icon(Icons.arrow_back,color: Colors.black,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(children: [
            const Center(
                child: Text(
                  'OTP',
                  style: Styles.textStyle28,
                )),
            const  SizedBox(
              height: 10,
            ),
            const   Text(
              'An Authentecation code has been sent',
              textAlign: TextAlign.center,
              style: Styles.textStyle14,
            ),
            const Text(
    'to (+02) 01003625286',
    textAlign: TextAlign.center,
    style: Styles.textStyle14,
    ),
            const SizedBox(height: 28,),
             OTPTextField(
               cursorColor: kPrimaryColor,
               fieldHeight:70,
               contentPadding:const EdgeInsets.symmetric(vertical: 25),
               otpFieldStyle: OtpFieldStyle(
                 enabledBorderColor: Colors.grey,
                 focusBorderColor: kPrimaryColor,
                 backgroundColor: kFilledColor,

               ),
               length:6,
              fieldWidth: 50,
              width:350,
              fieldStyle: FieldStyle.box,
              outlineBorderRadius: 8,
              textFieldAlignment: MainAxisAlignment.spaceBetween ,
               onChanged: (value){
                 smsCode=value;
               },

            ),
            const SizedBox(height: 48,),
            CustomButton(buttonName: 'Submit',onTap:()async{
              // Create a PhoneAuthCredential with the code
              PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: AuthCubit.verificationId, smsCode: smsCode);

              // Sign the user in (or link) with the credential
              await auth.signInWithCredential(credential);
              GoRouter.of(context).push(AppRouter.kLayoutScreen);

            },radius: 8,),
            const SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Code Sent. Resend Code in ',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),),
              Text('00:50',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700,color: kYallowColor),),
            ],)
          ]),
        ),
      ),
    );
  }
}
