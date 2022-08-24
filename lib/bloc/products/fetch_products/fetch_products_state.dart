part of 'fetch_products_cubit.dart';

@immutable
abstract class FetchProductsState {}

class FetchProductsInitial extends FetchProductsState {}

class FetchingProductsSucceeded extends FetchProductsState {}
class FetchingProductsFailed extends FetchProductsState {}
class RefreshState extends FetchProductsState {}
