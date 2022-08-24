import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled8/bloc/products/fetch_products/fetch_products_cubit.dart';
import 'package:untitled8/components/styles/colors.dart';
import 'package:untitled8/services/google_auth/google_signin_api.dart';
import 'package:untitled8/views/home_view.dart';
import 'package:untitled8/bloc/auth/google_auth/google_auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Auth_By_Other extends StatelessWidget {
  const Auth_By_Other({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    GoogleAuthCubit googleAuthCubit = GoogleAuthCubit.get(context);
    return
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Divider(color: Colors.grey)),
              Text('or continue with'),
              Expanded(
                child: Divider(color: CustomColors.LIGHT_GRAY, height: 4,),)
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocConsumer<GoogleAuthCubit, GoogleAuthState>(
                  listener: (context, state){
                    print(state);
                    if (state is GoogleAuthSucceeded) {
                      FetchProductsCubit productCubit = FetchProductsCubit().get(context);
                      productCubit.fetchProducts();
                      Timer(Duration(seconds: 3), ()
                      {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) =>
                                  Home_View(products: productCubit.products,),
                            )
                        );
                      });
                      }
                  },
                  builder: (context, state) {
                    return IconButton(
                      icon: Image.asset("assets/images/google_logo.png"),
                      onPressed: () async {
                        final user = await GoogleSignInApi.login();

                        if (user == null) {
                          print("there is something wrong");
                        }
                        else {
                          await googleAuthCubit.signinWithGoogle(user);
                            FetchProductsCubit productCubit = FetchProductsCubit().get(context);
                            productCubit.fetchProducts();
                            Timer(Duration(seconds: 7), (){
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => Home_View(products: productCubit.products,),
                                  )
                              );
                            });

                        }
                      },
                    );
                  },
                ),
                IconButton(icon: Image.asset("assets/images/facebook_logo.png"),
                  onPressed: null,),
              ]
          )
        ],
      );
  }
}



