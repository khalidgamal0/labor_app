import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Row(
      children: [
        Image(image: AssetImage(AssetsData.notification)),
        SizedBox(width: 120,),
        Image(image: AssetImage(AssetsData.home_appbar_1)),
        SizedBox(width: 10,),
        Image(image: AssetImage(AssetsData.home_appbar_2)),

      ],
    );
  }
}
