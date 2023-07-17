import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/separated.dart';

class NotificationFields extends StatelessWidget {
  const NotificationFields({
    super.key, required this.icon, required this.iconColor, required this.title, required this.text, required this.date,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String text;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 165,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all( color:const Color(0xffDFDFDF).withOpacity(.5),),
            borderRadius: BorderRadius.circular(16),
          ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 16),
            child: Column(
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(
                            color: const Color(0xffB5B5B5).withOpacity(.05),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Icon(icon,color: iconColor,size: 35,)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600,color: Colors.black,),),
                          const SizedBox(height: 8,),
                          Text(text,style: Styles.textStyle14,maxLines: 2,overflow: TextOverflow.ellipsis,),
                        ],),
                      const Spacer(),
                      Text(date,style: Styles.textStyle12,),
                    ]),
                const SizedBox(height: 18,),
                Separated(color: Colors.grey.withOpacity(.5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Complete payment methods',style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),),
                    IconButton(onPressed: (){}, icon:const  Icon(Icons.arrow_forward_ios_sharp,color: kPrimaryColor,))
                  ],),
              ],
            ),
          ),
        ),
        const SizedBox(height: 18,)
      ],
    );
  }
}
