import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/text_style.dart';

class CommentsItem extends StatelessWidget {
  const CommentsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        const Image(image: AssetImage(AssetsData.person)),
        const SizedBox(width: 7,),
        Column(
          children: [
            const Text('Ahmed Ali',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
            Text('22/7/2022',style: Styles.textStyle14.copyWith(    fontWeight: FontWeight.w400,
            )),
          ],
        )
      ],),
      const SizedBox(height: 8,),
      Text('Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremqu',
        style: Styles.textStyle14.copyWith(color: const Color(0XFF000000).withOpacity(.5)),)
    ],);
  }
}
