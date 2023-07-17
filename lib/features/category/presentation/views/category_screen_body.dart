import 'package:flutter/material.dart';
import 'package:labor/core/widgets/grid_view+builder.dart';

import '../../../../core/widgets/customAppbar.dart';


class CategoryScreenBody extends StatelessWidget {
  const CategoryScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:customAppbar(context:context,title:'Categories' ) ,
      body:const Padding(
        padding:  EdgeInsets.only(top: 0,right: 25,left: 20),
        child:    SingleChildScrollView(child: GridViewBilder()),
      ) ,
    );
  }
}
