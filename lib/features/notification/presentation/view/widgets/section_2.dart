import 'package:flutter/material.dart';
import 'package:labor/core/widgets/navigation.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/separated.dart';
import '../complete_order.dart';
import '../order_details.dart';

class Section2 extends StatelessWidget {
  const Section2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18,),
        Separated(color: Colors.grey.withOpacity(.5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                navigateTo(context,const CompleteOrderScreen());
              },
              child: Text('Complete payment methods',style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),),
            ),
            IconButton(onPressed: (){
              navigateTo(context,const OrderDetailsScreen());
            }, icon:const  Icon(Icons.arrow_forward_ios_sharp,color: kPrimaryColor,))
          ],),
      ],
    );
  }
}
