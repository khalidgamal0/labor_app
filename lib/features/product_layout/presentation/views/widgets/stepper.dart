import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/features/product_layout/presentation/views/widgets/stepper_builder.dart';

import '../../../../../constant.dart';
import '../../manger/product_layout_cubit.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductLayoutCubit, ProductLayoutState>(
        builder: (context, state) {
          var cubit=ProductLayoutCubit.get(context);
          return  Row(
            children: [
              InkWell(
                  onTap: (){
                    cubit.changeScreen(0);
                  },
                  child: StepperBuilder(text1: '1', text2: 'Step 1', color:cubit.currentIndex==0?kPrimaryColor:const Color(0xffDFDFDF))),
              const SizedBox(width: 10,),
              InkWell(
                  onTap: (){
                    cubit.changeScreen(1);
                  },
                  child: StepperBuilder(text1: '2', text2: 'Step 2', color: cubit.currentIndex==1?kPrimaryColor:const Color(0xffDFDFDF))),
              const SizedBox(width: 10,),
              InkWell(
                  onTap: (){
                    cubit.changeScreen(2);
                  },
                  child: StepperBuilder(text1: '3', text2: 'Step 3', color: cubit.currentIndex==2?kPrimaryColor:Color(0xffDFDFDF))),

            ],
          );
        },
      );
  }
}
