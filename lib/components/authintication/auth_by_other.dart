import 'package:flutter/material.dart';
import 'package:untitled8/components/styles/colors.dart';
import 'package:untitled8/services/google_auth/google_signin_api.dart';
import 'package:untitled8/views/home_view.dart';




class Auth_By_Other extends StatelessWidget {
  const Auth_By_Other({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Divider(color:Colors.grey)),
              Text('or continue with'),
              Expanded(child:Divider(color: CustomColors.LIGHT_GRAY,height: 4,),)
            ],
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              IconButton(icon: Image.asset("assets/images/google_logo.png"),
                onPressed: () async{
                  final user = await GoogleSignInApi.login();

                  if(user==null){
                    print("there is something wrong");
                  }
                  else{
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context)=>Home_View.fromGoogleOAuth(user: user)),
                    );

                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home_View(user: user)));

                  }
                },
              ),
              IconButton(icon: Image.asset("assets/images/facebook_logo.png"),onPressed: null,),
            ]
          )
        ],
      );
  }
}



