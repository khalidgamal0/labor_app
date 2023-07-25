import 'package:flutter/material.dart';
import 'package:labor/features/notification/presentation/view/widgets/section_2.dart';
import '../../../../../core/utils/text_style.dart';

class NotificationFields extends StatelessWidget {
  const NotificationFields({
    super.key, required this.icon, required this.iconColor, required this.title, required this.text, required this.date,  this.isLast=false,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String text;
  final String date;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: isLast?165:98,
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
                  if(isLast)
                  const Section2(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 18,)
      ],
    );
  }
}

