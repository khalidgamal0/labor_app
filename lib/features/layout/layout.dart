import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/core/utils/icon_Broken.dart';
import 'manger/layout_cubit.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          var cubit=LayoutCubit.get(context);

          return Scaffold(
            body: cubit.bottomScreen[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeBottomScreen(index);
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(IconBroken.Home,), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(IconBroken.Document,), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(IconBroken.Category,), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(IconBroken.Profile,), label: ''),

              ],
            ),
          );
        },
      ),
    );
  }
}
