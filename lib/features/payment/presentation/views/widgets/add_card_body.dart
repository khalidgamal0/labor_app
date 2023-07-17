import 'package:flutter/material.dart';
import 'package:labor/core/widgets/customAppbar.dart';
import 'package:labor/core/widgets/custom_button.dart';
import 'package:labor/core/widgets/end_page.dart';

import '../../../../../core/widgets/profile_apprach_fields.dart';

class AddCardScreenBody extends StatelessWidget {
  const AddCardScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppbar(context: context, title: 'Add Card'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height:36),
            ProfileApproachFields(text: 'Card Name',hintText: 'Enter Card Name'),
            ProfileApproachFields(text: 'Card type',suffix: Icons.keyboard_arrow_down,suffixIconColor: Colors.black,hintText:'Select Card Type'),
            ProfileApproachFields(text: 'Card Num',hintText: '9988'),
            ProfileApproachFields(text: 'Exp Date',hintText: '01/25'),
            ProfileApproachFields(text: 'Cvv',hintText: '9999',),
           const SizedBox(height: 32,),
            CustomButton(buttonName: 'Save'),
            const SizedBox(height: 32,),
            const EndPage(),
            const SizedBox(height: 32,),

          ]),
        ),
      ),
    );
  }
}
