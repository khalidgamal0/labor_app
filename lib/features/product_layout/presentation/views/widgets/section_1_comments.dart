import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/text_style.dart';

class SectionComments1 extends StatelessWidget {
  const SectionComments1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start  ,
      children: [
        const Image(image:AssetImage(AssetsData.companyBrand)),
        const SizedBox(height: 23,),
        const Text('United Group Company',style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22
        ),),
        const SizedBox(height: 14,),
        const  Row(
          children: [
            Icon(Icons.star,color: Color(0xffFDCF2D),),
            SizedBox(width: 6,),
            Text('4.5',style: Styles.textStyle18,),
          ],
        ),
        const  SizedBox(height: 12,),
        Text('Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium . Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.',
          style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: const Color(0xff000000).withOpacity(.5)),

        ),
      ],
    );
  }
}
