import 'package:flutter/material.dart';
import 'package:labor/constant.dart';
import 'package:labor/features/onBoarding/presentation/view/widgets/OnBoardingSec1.dart';
import 'package:labor/features/onBoarding/presentation/view/widgets/OnBoardingSec2.dart';

import '../../../../../core/widgets/separated.dart';


class OnBoardingScreenBody2 extends StatefulWidget {
  const OnBoardingScreenBody2({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreenBody2> createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreenBody2> {
  String lang = 'en';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: [
            const OnBoardingSec1(),
            radioList(title: 'English', value: 'en'),
            radioList(title: 'Arabic', value: 'Ar'),
            const SizedBox(
              height: 10,
            ),
            const OnBoardingSec2(),
          ]),
        ),
      ),
    );
  }
  RadioListTile<String> radioListTile({title, value}) {
    return RadioListTile(
      value: value,
      groupValue: lang,
      onChanged: (val) {
        setState(() {
          lang = val!;
        });
      },

      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      controlAffinity: ListTileControlAffinity.trailing,
      activeColor: kPrimaryColor,
    );
  }

  Padding radioSeparated() {
    return const Padding(
      padding:  EdgeInsets.only(right: 10),
      child: Separated(),
    );
  }

  Widget radioList({required title, required value}) =>
      Column(children: [
        radioListTile(title: title, value: value),
        radioSeparated(),
      ],);

}



