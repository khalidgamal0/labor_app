import 'package:flutter/material.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/secon-custom_button.dart';

class DetailsSection1 extends StatelessWidget {
  const DetailsSection1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16,),
        Text('My Order Details',style: Styles.textStyle18.copyWith(    fontWeight: FontWeight.w700,
        ),),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name of Order',style: Styles.textStyle12,),
                SizedBox(height: 15,),
                Text('Hourly Cleaning',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
                SizedBox(height: 40,),
                Text('Code of Order',style: Styles.textStyle12,),
                SizedBox(height: 15,),
                Text('25ds458126fs5dha',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
                SizedBox(height: 40,),
                Text('Details Order',style: Styles.textStyle12,),
                SizedBox(height: 15,),
                Text('1 Filipino worker under\ncontract',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Date of Order',style: Styles.textStyle12,),
                const SizedBox(height: 15,),
                const Text('22/7/2020',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
                const SizedBox(height: 40,),
                const  Text('Company',style: Styles.textStyle12,),
                const SizedBox(height: 15,),
                const Text('United Group\n Company',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
                const SizedBox(height: 40,),
                const  Text('Order States',style: Styles.textStyle12,),
                const SizedBox(height: 15,),
                secondCustomButton(text: 'Done', function: (){}),
              ],
            ),
          ],),
      ],
    );
  }
}
