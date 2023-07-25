import 'package:flutter/material.dart';
import 'package:labor/core/widgets/navigation.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/text_style.dart';
import '../profileCompany.dart';


class Screen2ListViewItem extends StatelessWidget {
  const Screen2ListViewItem({
    super.key,
  });




  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity ,
      height: 140,
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor),
        borderRadius: BorderRadius.circular(16),

      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 17,right: 15,bottom:14,left: 20),
        child: Column(children: [
           Row(children: [
             const Image(image: AssetImage(AssetsData.companyBrand)),
             const SizedBox(width: 8,),
            Column(children: [
              InkWell(child: const Text('United Group Company',style: Styles.textStyle16,),onTap:(){
                navigateTo(context, const ProfileCompany());
              }),
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffFDCF2D),
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFDCF2D),
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffB5B5B5),
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffB5B5B5),
                    size: 15,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffB5B5B5),
                    size: 15,
                  ),
                ],
              ),
            ],),
             const Spacer(),
             const Column(children: [
              Text('Price',style: Styles.textStyle14,),
              SizedBox(height:2,),
              Text('11100',style:TextStyle(fontWeight: FontWeight.w700,fontSize: 20)),

            ],)
          ],),
          Text('Sed ut perspiciatis unde omnis iste natus\n error sit voluptatem accusantium',
            style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: const Color(0x00000000).withOpacity(.5)),
          ),
          const SizedBox(height: 11,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Image(image: AssetImage(AssetsData.flag)),
                  const SizedBox(width: 5,),
                  Text('kenya',style: Styles.textStyle14.copyWith(color: Colors.black),),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.event_note_outlined,color: Colors.black.withOpacity(.7),),
                  const SizedBox(width: 5,),
                  Text('Hourly cleaning',style: Styles.textStyle14.copyWith(color: Colors.black),),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.watch_later_outlined,color: Colors.black,),
                  const SizedBox(width: 5,),
                  Text('4 Hours',style: Styles.textStyle14.copyWith(color: Colors.black),),
                ],
              ),
            ],)
        ]),
      ),
    );
  }
}
