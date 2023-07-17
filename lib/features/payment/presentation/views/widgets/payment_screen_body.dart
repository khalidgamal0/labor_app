import 'package:flutter/material.dart';
import 'package:labor/core/utils/assets_data.dart';
import 'package:labor/core/widgets/customAppbar.dart';
import 'package:labor/core/widgets/custom_button.dart';
import 'package:labor/core/widgets/end_page.dart';
import '../../../../../core/widgets/navigation.dart';
import '../add_card.dart';

class PaymentScreenBody extends StatelessWidget {
  const PaymentScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppbar(context: context, title: 'Payment'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(children: [
          const SizedBox(height: 20,),
          const Image(image:AssetImage( AssetsData.card)),
          const SizedBox(height: 20,),
          const Image(image:AssetImage( AssetsData.card)),
          const Spacer(),
          CustomButton(buttonName: '+ Add Card',onTap: (){
            navigateTo(context,const AddCardScreen());
          }),
          const SizedBox(height: 20,),
          const EndPage(),
          const SizedBox(height: 20,),

        ]),
      ),
    );
  }
}
