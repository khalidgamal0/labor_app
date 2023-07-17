import 'package:flutter/material.dart';
import 'package:labor/features/history/presentation/views/widgets/history_list_view_item.dart';
import 'package:labor/features/history/presentation/views/widgets/select_between_screen.dart';

class HistoryBody2 extends StatelessWidget {
  const HistoryBody2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(children: [
          const SelectBetweenScreen(isOngoing: true,past: false,text1: 'Ongoing',text2: 'Past',),
          const  SizedBox(height: 25,),
          ListView.separated(
              shrinkWrap: true,
              physics:const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>const  ListViewItemHistory(),
              separatorBuilder: (context, index) => const SizedBox(height:30,),
              itemCount: 5),
        ]),
      ),
    );
  }
}
