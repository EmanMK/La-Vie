import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/message_codec.dart';
import 'package:flutter/services.dart';
import 'package:untitled8/components/styles/colors.dart';
import 'package:untitled8/components/styles/text_styles.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
// import 'dart:html';

class CreateNewPost_View extends StatefulWidget {
  CreateNewPost_View({Key? key}) : super(key: key);
  @override
  _CreateNewPost_ViewState createState() => _CreateNewPost_ViewState();

}
class _CreateNewPost_ViewState extends State<CreateNewPost_View>{

  double imageSize=150;

  var discriptionController = TextEditingController();
  var titleController =TextEditingController();
  File? image;

  Future pickImage() async{
    try{
      final image=await ImagePicker().pickImage(source:ImageSource.gallery,);
      if(image ==null)return;
      final imageTemp = File(image.path);
      setState(()=> this.image = imageTemp);
    }on PlatformException catch(e){
      print('user denied access');
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: const [
                Icon(Icons.arrow_back_ios),
                SizedBox(width: 50,),
                Text('Create New Post',style:TextStyles.BLACK_HEADER)
              ],
            ),
            const SizedBox(height: 40,),
            Container(
              decoration:BoxDecoration(
                border: Border.all(width: 2,color: CustomColors.PRIMARLY),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              height: imageSize,
              width:imageSize,
              child: Stack(
                children:[
                  image != null ? Image.file(image!,
                        height: imageSize,
                        width:imageSize,
                        fit:BoxFit.cover,
                      ):Container(color: CustomColors.LIGHTER_GRAY,),

                  Positioned(

                    left: 50,
                    top:35,
                    child: Column(
                    children: [
                      IconButton(
                        onPressed: ()=> pickImage(),
                        icon: Icon(Icons.add),
                        color: CustomColors.PRIMARLY,
                      ),
                      Text('Add Photo',style: TextStyle(color:CustomColors.PRIMARLY,fontSize: 10),)
                    ],
                ),
                  ),
                ]
              ),
            ),
            SizedBox(height:50,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text('Title',style: TextStyles.LABELS,),
                TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                  ),
                ),
                SizedBox(height: 10,),
                Text('Discription',style: TextStyles.LABELS,),

                SizedBox(height:10,),
                TextFormField(
                  controller: discriptionController,
                  minLines: 4,
                  maxLines: 8,
                  decoration:InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                  )
                ),
              ]
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: CustomColors.PRIMARLY,
                // fixedSize: Size(double.infinity,75.0),
                minimumSize: Size(double.infinity,60),
              ),
              onPressed: (){

              },
              child: Text('Post',style:TextStyles.WHITE_BUTTON_FONT,),)
          ],
        )
      ),
    );
  }
}
