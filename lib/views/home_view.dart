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
import 'package:untitled8/models/products/fetch_products.dart';


class Home_View extends StatefulWidget {
  Home_View({Key? key,required this.products}) : super(key: key);

  List<Data>? products;
  @override
  _Home_ViewState createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // FetchProductsCubit productsCubit = FetchProductsCubit().get(context);
    // productsCubit.fetchProducts();
    // Timer((Duration(seconds: 2)),(){});
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
              child: GridView.builder(
                    padding: EdgeInsets.only(top: 60),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 60,
                    ),
                    itemCount: widget.products!.length,
                    itemBuilder: (context, index) => ProductCard(
                      imageUrl: widget.products![index].imageUrl,
                      name: widget.products![index].name,
                      price: widget.products![index].price,
                    ),
                  ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: Colors.white,
      buttonBackgroundColor: CustomColors.PRIMARLY,
      animationCurve: Curves.fastOutSlowIn,
      items: <Widget>[
        Image.asset("assets/icons/leave.png",height: 25,width: 25,),
        Image.asset("assets/icons/qr-code-scan.png",height: 25,width: 25,),
        Image.asset("assets/icons/home.png",height: 25,width: 25),
        Image.asset("assets/icons/bell.png",height: 25,width: 25,),
        Image.asset("assets/icons/profile.png",height: 25,width: 25,),
      ],
      index: 2,
      onTap: (index) {
        //Handle button tap
      },
    ),
    );
  }
}
