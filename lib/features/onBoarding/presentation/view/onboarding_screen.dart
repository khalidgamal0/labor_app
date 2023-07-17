import 'package:flutter/material.dart';
import 'package:labor/features/onBoarding/presentation/view/widgets/on-boarding_body.dart';

import '../../data/on_boarding_repo.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  OnBoardingScreenBody(onBoardingRepo:OnBoardingRepo(),);
  }
}
