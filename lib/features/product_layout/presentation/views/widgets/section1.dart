import 'package:flutter/material.dart';
import 'package:labor/features/product_layout/presentation/views/widgets/stepper.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/assets_data.dart';

class Section1 extends StatelessWidget {
  const Section1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Icon(Icons.arrow_back),
      SizedBox(
        height: 19,
      ),
      Text(
        'Hourly cleaning',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: kPrimaryColor,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomStepper(),
          Image(image: AssetImage(AssetsData.home_gridi_image))
        ],
      ),

    ]);
  }
}
