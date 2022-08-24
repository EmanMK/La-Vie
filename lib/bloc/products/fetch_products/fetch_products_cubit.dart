import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:untitled8/services/dio_helper/dio_helper.dart';

import 'package:untitled8/models/products/fetch_products.dart';
import 'package:untitled8/services/shared_prefrences/user_shared_prefrences.dart';

part 'fetch_products_state.dart';

class FetchProductsCubit extends Cubit<FetchProductsState> {
  FetchProductsCubit() : super(FetchProductsInitial());
  FetchProductsCubit get (context)=> FetchProductsCubit();

  List<Data>? products;

  Future fetchProducts() async {
    DioHelper.getData(
      url: "api/v1/products/",
      token: UserSharedPreferences.getAccessToken()
    ).then((value){
      ProductsModel productsModel = ProductsModel.fromJson(value.data);
      products = productsModel.data;
      print("##########################3");
      print(products?[2].price);
      products!= null? emit(FetchingProductsSucceeded()): emit(FetchingProductsFailed());
    });

  }

  Future refreshState() async{
    emit(RefreshState());
  }
  


}
