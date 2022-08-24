import 'dart:async';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled8/components/styles/colors.dart';
import 'package:untitled8/components/la vie/logo.dart';
import 'package:untitled8/components/home_view/product_card.dart';
import '../components/home_view/filters.dart';
import '../components/home_view/search_bar.dart';

// block - model
import 'package:untitled8/bloc/products/fetch_products/fetch_products_cubit.dart';


class Home_View extends StatefulWidget {
  Home_View({Key? key}) : super(key: key);

  @override
  _Home_ViewState createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {

  @override
  void initState() {
    FetchProductsCubit().fetchProducts();
    super.initState();
  }
  FetchProductsCubit? productsCubit;

  void getDate(context){
    productsCubit = FetchProductsCubit().get(context);
    productsCubit!.fetchProducts();
    Timer((Duration(seconds: 5)),(){
      print(productsCubit!.products![2].name);
      print(productsCubit!.products!.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    productsCubit = FetchProductsCubit().get(context);
    getDate(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Logo(height: 50, width: 100),
            SizedBox(height: 10),
            SearchBar(),
            SizedBox(height: 10),
            Filters(),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              height: 500,
              child: BlocConsumer<FetchProductsCubit, FetchProductsState>(
                listener: (context, state) {
                },
                builder: (context, state) {
                  return productsCubit!.products!.length > 0
                    ?GridView.builder(
                    padding: EdgeInsets.only(top: 60),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 60,
                    ),
                    itemCount: productsCubit!.products!.length,
                    itemBuilder: (context, index) => ProductCard(
                      imageUrl: productsCubit!.products![index].imageUrl,
                      name: productsCubit!.products![index].name,
                      price: productsCubit!.products![index].price,
                    ),
                  )
                    :Center(
                      child: Container(
                        height: 50,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: (){
                            productsCubit?.refreshState();
                            print("from here");
                            print(productsCubit!.products![0].name);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: CustomColors.PRIMARLY,
                            padding: EdgeInsets.symmetric(horizontal: 26)
                          ),
                          child:Text('Reload',style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            ),),
                          ),
                      ),
                    );
                },
              ),
            ),
          ],

        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: Offset(-5,0),
              blurRadius: 7
            ),
          ]
        ),
        child: CurvedNavigationBar(
        backgroundColor: Colors.white,
        buttonBackgroundColor: CustomColors.PRIMARLY,
        animationCurve: Curves.fastOutSlowIn,
        items: <Widget>[
          Image.asset("assets/icons/leave.png",height: 25,width: 25,),
          Image.asset("assets/icons/qr-code-scan.png",height: 25,width: 25,),
          Image.asset("assets/icons/home.png",height: 25,width: 25,color: Colors.black,),
          Image.asset("assets/icons/bell.png",height: 25,width: 25,),
          Image.asset("assets/icons/profile.png",height: 25,width: 25,),
        ],
        onTap: (index) {
          //Handle button tap
        },
    ),
      ),
    );
  }
}
