import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class OnBoardingSec1 extends StatelessWidget {
  const OnBoardingSec1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/1.9,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(AssetsData.onboarding4)),
          SizedBox(
            height: 20,
          ),
          Text(
            'Find your Home service ',
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 45, height: 0),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Select Language ',
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 20, height: 0),
          ),
          SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }
}
