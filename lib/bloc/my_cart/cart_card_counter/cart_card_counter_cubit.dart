import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
part 'cart_card_counter_state.dart';

class CartCardCounterCubit extends Cubit<CartCardCounterState> {
  CartCardCounterCubit() : super(CartCardCounterInitial());

  static CartCardCounterCubit get(context)=>BlocProvider.of(context);

  int itemCounter=0;

  void increaseItemConter(){
    itemCounter++;
    emit(CartCardCounterIncreasedState());
  }

  void decreaseItemConter(){
    itemCounter>0? itemCounter--:itemCounter;
    emit(CartCardCounterDecreasedState());
  }




}
