import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/core/widgets/custom_button.dart';
import 'package:labor/core/widgets/end_page.dart';
import 'package:labor/core/widgets/navigation.dart';
import 'package:labor/features/product_layout/presentation/views/widgets/preview_request_screen.dart';
import 'package:labor/features/product_layout/presentation/views/widgets/screen1.dart';
import 'package:labor/features/product_layout/presentation/views/widgets/screen2.dart';
import 'package:labor/features/product_layout/presentation/views/widgets/screen_3.dart';
import 'package:labor/features/product_layout/presentation/views/widgets/section1.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../manger/product_layout_cubit.dart';


class ProductLayoutScreenBody extends StatelessWidget {

  const ProductLayoutScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ProductLayoutCubit(),
        child: BlocBuilder<ProductLayoutCubit, ProductLayoutState>(
          builder: (context, state) {
            var cubit=ProductLayoutCubit.get(context);
            return Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 17, right: 17, bottom: 15, left: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Section1(),
                        const SizedBox(height: 24,),
                        if(cubit.currentIndex == 0)
                          const Screen1(),
                        if(cubit.currentIndex == 1)
                          const Screen2(),
                        if(cubit.currentIndex == 2)
                          const Screen3(),
                        const SizedBox(height: 18,),
                        CustomButton(buttonName: 'Next',onTap: (){
                          if(cubit.currentIndex<2){
                            cubit.changeScreen(++cubit.currentIndex);
                          }
                          else{
                            navigateTo(context, const PreviewRequestScreen(
                              image:AssetsData.iconPreview ,
                              title: 'Your request is under review',
                              text:'A confirmation message will be sent when your offer is accepted by the company',
                            ));
                          }
                          },),
                        const SizedBox(height: 18,),
                        const Center(child:  EndPage()),
                        const SizedBox(height: 18,),





                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        )
    );
  }
}





