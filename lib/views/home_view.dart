import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled8/components/appbar/logo_appbar.dart';
import 'package:untitled8/components/styles/colors.dart';
import'package:untitled8/services/google_auth/google_signin_api.dart';
import 'package:untitled8/components/styles/text_styles.dart';
import 'package:untitled8/components/la vie/logo.dart';



class Home_View extends StatelessWidget {
  GoogleSignInAccount? user;
  Home_View({Key? key}) : super(key: key);
  Home_View.fromGoogleOAuth({Key? key,required this.user}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0.00,
        title:Logo(height:50,width: 100),
        centerTitle: true,
      ),

      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),

        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children:[
                  Form(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefix: Icon(Icons.search,color: CustomColors.LIGHT_GRAY,),
                        label:Text('search',style: TextStyles.LABELS,),
                        focusColor: CustomColors.DARK_GRAY,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  SizedBox(width:5,),
                  Container(
                    decoration:BoxDecoration(
                      color: CustomColors.PRIMARLY,
                    ),
                    child: Icon(Icons.shopping_cart_outlined),
                  )
              ]
              ),

              Row(
                children: [
                  Container(
                    color: CustomColors.LIGHTER_GRAY,
                    child: Text('plants',style:TextStyles.LABELS),
                  ),
                  SizedBox(width: 3,)
                ],
              ),
              SizedBox(height: 10,),
              Container(
                child: Row(
                  children: [
                    Text(user!.email,style: TextStyles.PRIMARLY_HEADER,),
                    Text(user!.id,style: TextStyles.PRIMARLY_HEADER,),

                  ],
                ),
              )


            ],

          ),
        ),
      ),
    );
  }
}
