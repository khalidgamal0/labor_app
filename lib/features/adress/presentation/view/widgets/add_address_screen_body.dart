import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/widgets/customAppbar.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/end_page.dart';
import '../../../../../core/widgets/profile_apprach_fields.dart';

class AddAddressScreenBody extends StatelessWidget {
  const AddAddressScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:customAppbar(context: context,title: 'Address') ,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20),
          child: Column(children: [
            const SizedBox(height: 38,),
            const Image(image: AssetImage(AssetsData.addressImage)),
            const SizedBox(height: 32,),
            ProfileApproachFields(text: 'City',suffix: Icons.keyboard_arrow_down,suffixIconColor: Colors.black),
            ProfileApproachFields(text: 'Region',hintText: 'Add Your Region'),
            ProfileApproachFields(text: 'Street',hintText: 'Add Your Street'),
            ProfileApproachFields(text: 'Building',hintText: 'Add Number of Building'),
            const SizedBox(height: 50,),
            CustomButton(buttonName: 'Add',),
            const SizedBox(height: 20,),
            const EndPage(),
            const SizedBox(height: 20,),
          ]),
        ),
      ),
    );
  }
}
