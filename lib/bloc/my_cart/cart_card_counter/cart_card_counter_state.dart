part of 'cart_card_counter_cubit.dart';

@immutable
abstract class CartCardCounterState {}

class CartCardCounterInitial extends CartCardCounterState {}

class CartCardCounterIncreasedState extends CartCardCounterState {}
class CartCardCounterDecreasedState extends CartCardCounterState {}
