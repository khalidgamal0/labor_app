import 'package:flutter/material.dart';
import 'package:labor/core/widgets/custom_button.dart';
import 'package:labor/core/widgets/navigation.dart';
import '../../../../../core/utils/text_style.dart';
import '../../../../history/presentation/views/widgets/history_body.dart';
import '../../../../layout/layout.dart';

class PreviewRequestScreen extends StatelessWidget {
  const PreviewRequestScreen({Key? key, required this.image, required this.title, required this.text}) : super(key: key);

  final String image;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
        const HistoryScreenBody(
          isProduct: true,
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black.withOpacity(.8),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 330,
                height: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 28.0),
                  child:  Column(children: [
                     Image(image:AssetImage(image)),
                    const SizedBox(height: 8,),
                    Text(title,style: Styles.textStyle18.copyWith(fontWeight:FontWeight.w700 ),),
                    const SizedBox(height: 11,),
                    Text(textAlign: TextAlign.center,text,style: Styles.textStyle14.copyWith(fontWeight:FontWeight.w700 ),),
                    const SizedBox(height: 17,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: CustomButton(buttonName: 'Home',onTap: (){
                        navigateTo(context,const LayoutScreen());
                      }),
                    ),
                    const SizedBox(height: 17,),
                    Text('Cancel',style: Styles.textStyle14.copyWith(fontWeight:FontWeight.w700 ))
                  ]),
                ),
              ),
            ),
          ),
        ),
      ]) ,
    );
  }
}
