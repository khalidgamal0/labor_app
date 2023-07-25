import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:labor/core/utils/assets_data.dart';

import '../../../../constant.dart';
import '../../../../core/utils/app_router.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToHome();

  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:kPrimaryColor,
      body: Center(child: Image(image:AssetImage(AssetsData.splash))),
    );
  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds:2),(){

      GoRouter.of(context).push(AppRouter.kOnBoardingScreen);
    },);
  }
}
