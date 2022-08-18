import 'package:flutter/material.dart';
import 'package:untitled8/components/authintication/signup_form.dart';
import 'package:untitled8/components/la vie/Header_Text.dart';
import 'package:untitled8/components/styles/colors.dart';
import 'package:untitled8/components/authintication/login_form.dart';
import 'package:untitled8/components/styles/text_styles.dart';
import '../components/authintication/auth_by_other.dart';


class Authintication_View extends StatefulWidget {
  Authintication_View({Key? key}) : super(key: key);

  Widget AppAuth=Login_Form();
  @override
  _Authintication_ViewState createState() => _Authintication_ViewState();
}


class _Authintication_ViewState extends State<Authintication_View> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png",height:70,width:120,),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: (){
                      setState(() {
                        widget.AppAuth=Signup_Form();
                      });
                    },
                    child: Text('Sign up', style: TextStyles.PRIMARLY_HEADER,)
                ),
                  Container(
                    decoration: BoxDecoration(
                      // Border(bottom: BorderSide(color: Colors.black,width: 30))
                    ),
                    child: TextButton(
                      style: ButtonStyle(side:MaterialStateProperty.all( BorderSide(color: Colors.black,))),
                        onPressed: (){
                          setState(() {
                            widget.AppAuth=Login_Form();
                          });
                        },
                        child: Text('Login', style: TextStyles.PRIMARLY_HEADER,)
                    ),
                  ),


                ],
              ),
              Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(20),
                child: Column(
                  children:[
                    widget.AppAuth,
                    Auth_By_Other(),
                  ]
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
