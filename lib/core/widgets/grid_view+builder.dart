import 'package:flutter/material.dart';

import 'grid_Item.dart';

class GridViewBilder extends StatelessWidget {
  const   GridViewBilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        physics:const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing:12,
        // childAspectRatio: 1/1.75,
        children:List.generate(10,
                (index) =>const GridItem()));
  }
}
