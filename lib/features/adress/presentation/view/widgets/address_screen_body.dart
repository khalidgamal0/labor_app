import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/widgets/customAppbar.dart';
import '../../../../../core/widgets/navigation.dart';
import '../add_address_screen.dart';
import 'address_fields.dart';

class AddressScreenBody extends StatelessWidget {
  const AddressScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
          context: context,
          title: 'Select Address',
          actionIcon: Icons.add_circle_outline_outlined,
          onPressed: (){
            navigateTo(context,const AddAddressScreen());
          },
          isAddress: true),
      body: const SingleChildScrollView(
        child:  Column(children: [
          SizedBox(height: 32),
          AddressFields(
              backgroundColor: kPrimaryColor,
              circleAvatarColor: Colors.white,
              iconColor: kYallowColor),
          AddressFields(
              backgroundColor: Colors.white,
              circleAvatarColor: kPrimaryColor,
              iconColor: Colors.white,
              textColor: Colors.black,
              titleColor: Color(0xffB5B5B5)),
          AddressFields(
              backgroundColor: Colors.white,
              circleAvatarColor: kPrimaryColor,
              iconColor: Colors.white,
              textColor: Colors.black,
              titleColor: Color(0xffB5B5B5)),
        ]),
      ),
    );
  }
}
