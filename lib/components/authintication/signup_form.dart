import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/components/styles/colors.dart';
import 'package:untitled8/components/styles/text_styles.dart';

class Signup_Form extends StatelessWidget {
  Signup_Form({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  var firstNameController=TextEditingController();
  var lastNameController=TextEditingController();
  var confirmPasswordController =TextEditingController();
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
                  Text('First Name',style: TextStyles.LABELS),
                  TextFormField(
                    controller: firstNameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  SizedBox(height: 30,),

                  Text('First Name',style: TextStyles.LABELS),
                  TextFormField(
                    controller: firstNameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  SizedBox(height: 30,),

                  Text('Last Name',style: TextStyles.LABELS),
                  TextFormField(
                    controller: lastNameController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                    ),
                  ),
                  SizedBox(height: 30,),

                  Text('Confirm Password',style: TextStyles.LABELS),
                  TextFormField(
                    controller: confirmPasswordController, keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  SizedBox(height: 30,),

                ]
            ),
            SizedBox(height:20,),
            MaterialButton(
                color: CustomColors.PRIMARLY,
                minWidth: double.infinity,
                height:50,
                onPressed: ()async{
                  print(firstNameController);
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
