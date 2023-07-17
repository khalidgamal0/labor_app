import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:labor/core/utils/app_router.dart';
import 'package:labor/features/onBoarding/data/on_boarding_repo.dart';
import 'package:labor/features/onBoarding/presentation/view/widgets/page_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../constant.dart';
import '../../../../../core/widgets/custom_button.dart';

class OnBoardingScreenBody extends StatefulWidget {
  OnBoardingScreenBody({Key? key, required this.onBoardingRepo})
      : super(key: key);
  final OnBoardingRepo onBoardingRepo;
  bool isLast = false;

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          actions: [
            if (!widget.isLast)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kOnBoardingScreen2);
                  },
                  child: const Text(
                    'skip',
                    style: TextStyle(
                      color: kYallowColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                controller: pageController,
                itemBuilder: (context, index) => pageItemView(
                    index: index, onBoardingRepo: widget.onBoardingRepo),
                itemCount: widget.onBoardingRepo.pageItems.length,
                onPageChanged: (value) {
                  if (value == widget.onBoardingRepo.pageItems.length - 1) {
                    setState(() {
                      widget.isLast = true;
                    });
                  }
                  else{
                    setState(() {
                      widget.isLast = false;
                    });
                  }
                },
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: widget.onBoardingRepo.pageItems.length,
                    effect: const ExpandingDotsEffect(
                      dotColor: Color(0xffD9D9D9),
                      dotHeight: 9,
                      dotWidth: 12,
                      activeDotColor: kYallowColor,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: CustomButton(
                      buttonName: widget.isLast ? 'Enter' : 'Next',
                      onTap: () {
                        pageController.nextPage(
                            duration: const Duration(microseconds: 2),
                            curve: Curves.bounceIn);
                        if(widget.isLast){
                          GoRouter.of(context).push(AppRouter.kOnBoardingScreen2);
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
