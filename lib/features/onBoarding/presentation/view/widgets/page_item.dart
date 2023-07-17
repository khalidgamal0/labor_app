import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../data/on_boarding_repo.dart';

class pageItemView extends StatelessWidget {
  const pageItemView({
    super.key,
    required this.onBoardingRepo,
    required this.index,
  });

  final OnBoardingRepo onBoardingRepo;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.5),
        child: Center(
          child: SizedBox(
            height: 190.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                const Image(image: AssetImage(AssetsData.onboardingVector)),
                Image(image: AssetImage(onBoardingRepo.pageItems[index].image)),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          onBoardingRepo.pageItems[index].title,
          style: const TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(
        height: 24,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          onBoardingRepo.pageItems[index].text,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}
