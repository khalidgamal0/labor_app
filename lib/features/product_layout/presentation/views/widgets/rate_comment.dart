import 'package:flutter/material.dart';

import '../../../../../core/utils/text_style.dart';

class RateComment extends StatelessWidget {
  const RateComment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Add Your Rate',style: Styles.textStyle16,),
          const  SizedBox(height: 15,),
          SizedBox(
            height:20,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>  InkWell(
                    onTap: (){},
                    child: Icon(Icons.star,color:const Color(0xff000000).withOpacity(.2))),
                separatorBuilder: (context, index) => const SizedBox(width: 12,),
                itemCount: 5),
          ),
          const SizedBox(height: 42,)
        ]
    );
  }
}
