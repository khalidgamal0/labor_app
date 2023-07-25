import 'package:flutter/material.dart';
import 'package:labor/constant.dart';
import 'package:labor/core/utils/assets_data.dart';
import 'package:labor/core/widgets/customAppbar.dart';
import 'package:labor/core/widgets/custom_button.dart';
import 'package:labor/core/widgets/end_page.dart';
import 'package:labor/core/widgets/navigation.dart';

import '../../../../../core/utils/text_style.dart';
import '../../../../../core/widgets/profile_apprach_fields.dart';
import '../../../../product_layout/presentation/views/widgets/preview_request_screen.dart';
import 'details_sec_1.dart';
import 'details_sec_2.dart';
import 'details_sec_3.dart';

class CompleteOrderScreenBody extends StatelessWidget {
  const CompleteOrderScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppbar(context: context, title: 'Complete Order',isOrder: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child:  SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DetailsSection1(),
                const SizedBox(height: 20,),
                const DetailsSection2(),
                const SizedBox(height: 24,),
                const Text('payment methods', style: Styles.textStyle18,),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text('Cash',style:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffB5B5B5),
                    )),
                    Column(
                      children: [
                        const    Text('Debit Card',style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        )),
                        const SizedBox(
                          height: 4,
                        ),
                        Container(width:8 ,height:4 ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: kPrimaryColor,
                        ),
                        )
                      ],
                    )
                  ],),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Image(image: AssetImage(AssetsData.card)),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  IconButton(onPressed: (){}, icon:const Icon(Icons.add_circle_outline_outlined),color: kPrimaryColor,),
                  InkWell(
                      onTap: (){},
                      child: Text('Add New Card',style: Styles.textStyle18.copyWith(color: kPrimaryColor),))
                ],),
                const SizedBox(
                  height: 24,
                ),
                ProfileApproachFields(text: 'Leave notes',hintText: ' Your notes',maxLines: 10),
                ProfileApproachFields(text: 'Add Cobon',suffix: Icons.check_circle,suffixIconColor: kPrimaryColor),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Price',
                  style: Styles.textStyle18,
                ),
                const SizedBox(
                  height: 30,
                ),
                const DetailsSection3(),
                const SizedBox(
                  height: 30,
                ),
                 CustomButton(buttonName: 'Pay',onTap: (){
                   navigateTo(context,const PreviewRequestScreen(
                     image:AssetsData.iconPreview2 ,
                     title: 'Your request has been completed',
                     text:'The worker will be dispatched on time',
                   ));
                 }),
                const SizedBox(
                  height: 30,
                ),
                const Center(child:  EndPage()),
                const SizedBox(
                  height: 30,
                ),
              ]),
        ),
      ),
    );
  }
}
