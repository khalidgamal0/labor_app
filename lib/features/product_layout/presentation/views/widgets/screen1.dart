import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/end_page.dart';
import '../../../../../core/widgets/profile_apprach_fields.dart';

class Screen1 extends StatelessWidget {
  const Screen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Period',style: Styles.textStyle16 ,),
        const SizedBox(height:10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 180,
              height:56 ,
              decoration: BoxDecoration(
                border: Border.all(color: kYallowColor),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.sunny,color: Color(0xffFFD347),size: 40,),
                    SizedBox(width: 8,),
                    Text('Morning',style: Styles.textStyle16,)
                  ]),
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(AssetsData.moon),),
                  SizedBox(width: 8,),
                  Text('Morning',style: Styles.textStyle16,)
                ]),
          ],
        ),
        const SizedBox(height:28,),
        ProfileApproachFields(text: 'number of Hours',suffix: Icons.keyboard_arrow_down,suffixIconColor: Colors.black),
        ProfileApproachFields(text: 'Nationality',suffix: Icons.keyboard_arrow_down,suffixIconColor: Colors.black),
        ProfileApproachFields(text: 'City',suffix: Icons.keyboard_arrow_down,suffixIconColor: Colors.black),
      ],
    );
  }
}
