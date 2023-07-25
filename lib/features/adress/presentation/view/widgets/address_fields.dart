import 'package:flutter/material.dart';

import '../../../../../core/utils/text_style.dart';

class AddressFields extends StatelessWidget {
  const AddressFields({
    super.key, required this.backgroundColor, required this.circleAvatarColor, required this.iconColor,  this.titleColor=const Color(0xffDFDFDF), this.textColor=const Color(0xffFFFFFF),
  });
  final Color backgroundColor;
  final Color circleAvatarColor;
  final Color iconColor;
  final Color titleColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 17.0),
      child: Column(
        children: [
          Container(
            height: 124,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(8),
              color: backgroundColor,
            ),
            child: Row(children: [
              Padding(
                padding:const EdgeInsets.only(right: 20,left: 17.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: circleAvatarColor,
                  child:  Icon(Icons.location_on_rounded,color: iconColor,),),
              ),
              Padding(
                padding:const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('City',style: Styles.textStyle10.copyWith(color:titleColor),),
                    const SizedBox(height: 3,),
                    Text('Riyadh',style: Styles.textStyle12_700.copyWith(color: textColor),),
                    const SizedBox(height: 11,),
                    Text('region',style: Styles.textStyle10.copyWith(color:titleColor),),
                    const SizedBox(height: 3,),
                    Text('Alexander\n Language School',style: Styles.textStyle12_700.copyWith(color: textColor)),
                  ],),
              ),
              const SizedBox(width: 60),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Street',style: Styles.textStyle10.copyWith(color:titleColor),),
                    const SizedBox(height: 3,),
                    Text('Non',style: Styles.textStyle12_700.copyWith(color: textColor),),
                    const SizedBox(height: 11,),
                    Text('Building',style:Styles.textStyle10.copyWith(color:titleColor),),
                    const SizedBox(height: 3,),
                    Text('2 Floor',style:Styles.textStyle12_700.copyWith(color: textColor),),
                  ],),
              ),
            ]),
          ),
          const SizedBox(height: 24,)
        ],
      ),
    );
  }
}
