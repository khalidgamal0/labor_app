import 'package:flutter/material.dart';
import 'package:labor/core/utils/assets_data.dart';
import 'package:labor/features/history/presentation/views/widgets/select_between_screen.dart';

class HistoryInitialScreen extends StatelessWidget {
  const HistoryInitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Center(
        child: Column(
          children: [
            const SelectBetweenScreen(past: true,isOngoing: false,text1: 'Underway',text2: 'Previous',),
            SizedBox(height: MediaQuery.of(context).size.height/5,),
            const  Image(image: AssetImage(AssetsData.historyimageintial)),
            const   SizedBox(height: 39,),
            const Text('No History !',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),),
          ],
        ),
      ),
    );
  }
}
