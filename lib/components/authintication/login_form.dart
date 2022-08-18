import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/components/styles/colors.dart';
import 'package:untitled8/components/styles/text_styles.dart';

class Login_Form extends StatelessWidget {
  Login_Form({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  var emailController =TextEditingController();
  var passwordController =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formKey,

        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text('Email',style: TextStyles.LABELS),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                SizedBox(height: 30,)
              ]
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text('Password',style: TextStyles.LABELS),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                  ),
                ),

              ]
            ),
            SizedBox(height:20,),
            MaterialButton(
              color: CustomColors.PRIMARLY,
              minWidth: double.infinity,
              height:50,
              onPressed: ()async{
                print(emailController);
                print(passwordController);

            //  user = what returns form api
            //  if (user != null)
            //    -navigate to next level
            //    -sent user data with navigation
            }, child: Text('Login',style: TextStyles.WHITE_HEADER,))
          ],
        ),
      ),
    );
  }
}
