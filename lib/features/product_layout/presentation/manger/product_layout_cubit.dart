import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'product_layout_state.dart';

class ProductLayoutCubit extends Cubit<ProductLayoutState> {
  ProductLayoutCubit() : super(ProductLayoutInitial());
  static ProductLayoutCubit get(context){
    return BlocProvider.of(context);
  }

  int currentIndex=0;
  void changeScreen(index){
    currentIndex=index;
    emit(ChangeLayoutProductScreen());
  }
}
