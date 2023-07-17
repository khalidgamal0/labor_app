import 'package:flutter/material.dart';
import 'package:labor/constant.dart';
import 'package:labor/core/utils/assets_data.dart';
import 'package:labor/core/utils/text_style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/widgets/grid_view+builder.dart';
import 'home_appbar.dart';

class HomeScreenBody extends StatelessWidget {
   HomeScreenBody({Key? key}) : super(key: key);
  var pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0XFFFFFF).withOpacity(.8),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              const HomeAppBar(),
              const SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  Text(
                    'Good Morning ',
                    style: Styles.textStyle14.copyWith(color: Colors.black),
                  ),
                  Text(
                    'KHALID',
                    style: Styles.textStyle14.copyWith(color: kYallowColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Text('Find your home service Need a helping hand today?',
                style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),
              const SizedBox(
                height: 28,
              ),
              Container(
                width: double.infinity,
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  color:const Color(0xff4B8673),
                ),
                child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                    padding: EdgeInsets.symmetric(vertical: 9.0,horizontal: 10),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Image(image: AssetImage(AssetsData.location)),

                    ),
                  ),
                       Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text('your location',
                        style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color:const Color(0XFFFFFFFF).withOpacity(.4)),),
                        const SizedBox(height: 3,),
                       Text('Jiddah Alexander Language School , ALS',
                         style: Styles.textStyle12.copyWith(color: Colors.white),
                       overflow: TextOverflow.ellipsis,
                       )
                    ],),
                  )
                ]),
              ),
              const SizedBox(
                height: 28,
              ),
              const Image(image: AssetImage(AssetsData.home_image)),
              const SizedBox(
                height: 28,
              ),
              SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect:const ScrollingDotsEffect (
                    activeDotColor: kPrimaryColor,
                    dotWidth: 6,
                    dotHeight:6,

                  ),
                    ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Our services',style: Styles.textStyle18,),
                Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text('See ALL',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: kPrimaryColor)
                  ),
                ),

              ],),
              const SizedBox(
                height: 28,
              ),
              const GridViewBilder(),
              const SizedBox(
                height: 28,
              ),



            ]),
          ),
        ),
      ),
    );
  }
}



