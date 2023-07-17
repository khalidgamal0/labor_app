import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/features/history/presentation/manger/history_cubit.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/text_style.dart';

class SelectBetweenScreen extends StatelessWidget {
   const SelectBetweenScreen({
    super.key, required this.isOngoing, required this.past, required this.text1, required this.text2,
  });
   final bool isOngoing;
   final bool past;
   final String text1;
   final String text2;


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryCubit, HistoryState>(
  builder: (context, state) {
    var cubit=HistoryCubit.get(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HistoryAppBar2Item(past:past ,isOngoing: isOngoing,text:text1 ,onTap: (){
            cubit.changeHistoryBody(1);
          }),
          HistoryAppBar2Item(past:!past ,isOngoing: !isOngoing,text:text2,onTap:(){
            cubit.changeHistoryBody(2);

          }),
        ],),
    );
  },
);
  }
}

class HistoryAppBar2Item extends StatelessWidget {
  const HistoryAppBar2Item({
    super.key,
    required this.isOngoing, required this.text, required this.onTap, required this.past,
  });

  final bool isOngoing;
  final bool past;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       TextButton(
         onPressed: onTap,
         style: TextButton.styleFrom(padding: EdgeInsets.zero),
         child: Text(text,style: Styles.textStyle16.copyWith(
          color:isOngoing&&!past?const Color(0xff000000):const Color(0xffB5B5B5)
      ),),
       ),
      if(isOngoing&&!past)
        Container(height: 4,width: 8,
          decoration: BoxDecoration(color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),

    ],);
  }
}
