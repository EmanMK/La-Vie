import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled8/bloc/auth/google_auth/google_auth_cubit.dart';
import 'package:untitled8/bloc/products/fetch_products/fetch_products_cubit.dart';
import 'package:untitled8/components/authintication/login_form.dart';
import 'package:untitled8/views/create_new_post_view.dart';
import 'package:untitled8/views/home_view.dart';
import 'package:untitled8/views/authintication_view.dart';
import 'package:untitled8/views/my_cart_view.dart';
import 'package:untitled8/views/splash_view.dart';

//blocs
import 'package:untitled8/bloc/my_cart/cart_card_counter/cart_card_counter_cubit.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider (
          create: (BuildContext context) => CartCardCounterCubit(),
        ),
        BlocProvider (
          create: (BuildContext context) => GoogleAuthCubit(),
        ),
        BlocProvider (
          create: (BuildContext context) => FetchProductsCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Splash_View(),
        // home:Home_View(),
        // home:CreateNewPost_View(),
        // home:MyCart_View(),

      ),
    );
  }
}
