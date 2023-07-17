import 'package:labor/features/onBoarding/data/constant_on_boarding.dart';
import '../../../core/utils/assets_data.dart';
import 'model.dart';

 class OnBoardingRepo{
  List<OnBoardingModel>pageItems= [
    OnBoardingModel(image: AssetsData.onboarding1,title:title1,text: text1 ),
    OnBoardingModel(image: AssetsData.onboarding2,title:title2,text: text2 ),
    OnBoardingModel(image: AssetsData.onboarding3,title:title3,text: text3 ),
  ];
}