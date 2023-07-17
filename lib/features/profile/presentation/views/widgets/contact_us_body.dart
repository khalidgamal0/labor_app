import 'package:flutter/material.dart';
import 'package:labor/core/widgets/customAppbar.dart';
import 'package:labor/core/widgets/custom_button.dart';
import '../../../../../core/widgets/profile_apprach_fields.dart';

class ContactUsScreenBody extends StatelessWidget {
  const ContactUsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context: context, title: ' Contact Us'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 29),
        child: SingleChildScrollView(
          child: Column(children: [
            const Text('We are pleased to contact you to hear your inquiries and opinions',
            style: TextStyle(fontSize: 20,fontWeight:FontWeight.w600,color: Colors.grey),
            ),
            const SizedBox(height: 29,),
             ProfileApproachFields(text: 'Name',hintText: 'Enter Your Name',),
             ProfileApproachFields(text: 'Phone',hintText: 'Enter Your Phone',),
             ProfileApproachFields(text: 'Massege',hintText: 'Enter Your Massege',maxLines: 10),
            CustomButton(buttonName: 'Send',onTap: (){},)
          ]),
        ),
      ),
    );
  }
}
