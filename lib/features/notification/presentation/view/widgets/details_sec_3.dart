import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/text_style.dart';

class DetailsSection3 extends StatelessWidget {
  const DetailsSection3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('price order',style: Styles.textStyle14.copyWith(color:const Color(0XFF000000)),),
            const  SizedBox(height: 20,),
            Text('Tax',style: Styles.textStyle14.copyWith(color:const Color(0XFF000000)),),
            const  SizedBox(height: 20,),
            Text('Discount',style: Styles.textStyle14.copyWith(color: kPrimaryColor,)),
            const SizedBox(height: 20,),
            Text('Total Price',style: Styles.textStyle14.copyWith(color:const Color(0XFF000000)),),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('2500 SR',style: Styles.textStyle16),
            const  SizedBox(height: 20,),
            const Text('250 SR',style: Styles.textStyle16),
            const  SizedBox(height: 20,),
            Text('100 SR',style: Styles.textStyle16.copyWith(color: kPrimaryColor)),
            const SizedBox(height: 20,),
            const Text('2650 SR',style: Styles.textStyle16),
          ],
        ),
      ],
    );
  }
}
