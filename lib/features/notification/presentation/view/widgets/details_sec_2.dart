import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/text_style.dart';

class DetailsSection2 extends StatelessWidget {
  const DetailsSection2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 64,width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xff4B8673),
      ),
      child:  Row(children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Image(image: AssetImage(AssetsData.location))),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 14,),
            Text('your  Order location',style: Styles.textStyle10.copyWith(color:const Color(0xffFFFFFF).withOpacity(.4)),),
            const Text('Jiddah Alexander Language School , ALS',style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xffFFFFFF)
            )),
          ],
        ),
      ]),
    );
  }
}
