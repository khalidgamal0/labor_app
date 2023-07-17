import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/features/history/presentation/views/history.dart';
import 'package:labor/features/profile/presentation/views/profile.dart';
import 'package:meta/meta.dart';

import '../../category/presentation/views/category.dart';
import '../../home_screen/presentation/view/home_screen.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  static LayoutCubit get(context){
    return BlocProvider.of(context);
  }

  int currentIndex=0;
  void changeBottomScreen(index){
    currentIndex=index;
    emit(ChangeBottomScreen());
  }
  List<Widget>bottomScreen=const [HomeScreen(),HistoryScreen(),CategoryScreen(),ProfileScreen()];
}
