import 'package:flutter/material.dart';
import 'package:labor/features/product_layout/presentation/views/widgets/screen-2_list_view_item.dart';

import '../../../../../core/utils/text_style.dart';

class Screen2 extends StatelessWidget {
  const Screen2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Filter',style: Styles.textStyle16 ,),
        const SizedBox(height:10,),
        Row(
          children: [
            Container(
              width: 118,
              height:34 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(42),
              ),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Price',style:TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                    SizedBox(width: 8,),
                    Icon(Icons.keyboard_arrow_down,size: 25,),
                  ]),
            ),
            const SizedBox(width: 15,),
            Container(
              width: 118,
              height:34 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(42),
              ),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Evaluation',style:TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                    SizedBox(width: 8,),
                    Icon(Icons.keyboard_arrow_down,size: 25,),
                  ]),
            ),
          ],
        ),
        const SizedBox(height:28,),
        ListView.separated(
            shrinkWrap: true,
            physics:const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => const Screen2ListViewItem(),
            separatorBuilder:(context, index) =>const SizedBox(height: 14,),
            itemCount: 2),
      ],
    );
  }
}
