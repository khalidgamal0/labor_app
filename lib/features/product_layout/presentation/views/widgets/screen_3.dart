import 'package:flutter/material.dart';
import 'package:labor/core/widgets/profile_apprach_fields.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/text_style.dart';

class Screen3 extends StatelessWidget {
  const Screen3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(image: AssetImage(AssetsData.screen_3)),
        const SizedBox(height: 11,),
        ProfileApproachFields(text: 'number of visits',suffix: Icons.keyboard_arrow_down,suffixIconColor: Colors.black),
        const SizedBox(height: 12,),
        Text('Choose Date & Time',style: Styles.textStyle18.copyWith(    fontWeight: FontWeight.w700,
        ),),
      ],
    );
  }
}
