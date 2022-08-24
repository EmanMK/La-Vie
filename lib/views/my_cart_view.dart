import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled8/components/my_cart_view/my_cart_card.dart';
import 'package:untitled8/components/styles/text_styles.dart';
import 'package:untitled8/components/styles/colors.dart';

class MyCart_View extends StatefulWidget {
  MyCart_View({Key? key}) : super(key: key);

  @override
  _MyCart_ViewState createState() => _MyCart_ViewState();
}

class _MyCart_ViewState extends State<MyCart_View> {

  double? number=0,total=0,price=0;
  String title="Cactus plant";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:EdgeInsets.all(30),
        color: CustomColors.BG_LIGHT_GRAY,
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.arrow_back),
                SizedBox(width: 100,),
                Text('My Cart',style: TextStyles.BLACK_HEADER,),
              ],
            ),
            SizedBox(height:30,),
            SizedBox(
              height: 530,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (context,index)=>MyCartCard(),
              ),
            ),

            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),),
                          Text('$total Egp',style: TextStyle(
                            fontSize: 18,
                            color: CustomColors.PRIMARLY,
                            fontWeight: FontWeight.w500,
                          ),),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: CustomColors.PRIMARLY,
                        // fixedSize: Size(double.infinity,75.0),
                        minimumSize: Size(double.infinity,60),
                      ),
                      onPressed: (){
                        //TODO: implement checkout
                      },
                      child: Text('Checkout',style:TextStyles.WHITE_BUTTON_FONT,),
                    ),
                  ],
                ),
            ),
         ],
        ),
      ),


    );
  }
}
