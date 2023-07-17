import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/features/history/presentation/views/history_body_2.dart';
import 'package:labor/features/history/presentation/views/history_body_3.dart';
import 'package:meta/meta.dart';

import '../views/history_body_1.dart';

part 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit() : super(HistoryInitial());
  static HistoryCubit get(context){
    return BlocProvider.of(context);
  }

  List<Widget>historyBody=const [HistoryInitialScreen(),HistoryBody2(),HistoryBody3()];
  int historyIndex=0;
  void changeHistoryBody(index){
    historyIndex=index;
    emit(ChangeHistoryBody());
  }
}
