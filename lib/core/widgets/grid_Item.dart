import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/text_style.dart';
import '../../features/product_layout/presentation/views/product_layout.dart';
import 'navigation.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigateTo(context,const ProductLayoutScreen());
      },
      child: Container(
        height: 193,
        width: 171,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 62,right: 20,top:20,bottom: 28),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image(image: AssetImage(AssetsData.home_grid_image_background)),
                    Image(image: AssetImage(AssetsData.home_gridi_image)),
                  ],
                ),
              ),
              Text('hourly cleaning',style: Styles.textStyle18,)

            ]),

      ),
    );
  }
}
