import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled8/components/styles/colors.dart';
import 'package:untitled8/components/styles/text_styles.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key? key, required this.name, required this.imageUrl, required this.price}) : super(key: key);

  String? name;
  String? imageUrl;
  int? price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 3,
              spreadRadius: 3,
              offset: Offset(0,3),
            )
          ]
      ),
      height: 400,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 600,
            padding: EdgeInsets.all(10),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(name!,style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
                Text('${price} EGP',style: TextStyle(fontSize: 11,color: Colors.black,fontWeight: FontWeight.w600)),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: CustomColors.PRIMARLY,
                    padding: EdgeInsets.symmetric(horizontal: 26)
                  ),
                  child:Text('Add To Cart',style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),),
                ),
              ],
            ),

            ),
          Positioned(
              top: -40,
              child: Container(
                width: 150,
                height: 100,
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Image.network(
                      "https://lavie.orangedigitalcenteregypt.com${imageUrl!}",
                      height: 160,
                      width:90,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 2),
                              height:15,
                              width: 15,
                              color: CustomColors.LIGHTER_GRAY,
                              child: IconButton(
                                onPressed: (){},
                                icon: FaIcon(FontAwesomeIcons.minus),
                                color: CustomColors.LIGHT_GRAY,
                                iconSize: 15,padding: EdgeInsets.all(0),
                              ),
                            ),
                            Text('1'),
                            Container(
                              margin: EdgeInsets.only(left: 2),
                              height:15,
                              width: 15,
                              color: CustomColors.LIGHTER_GRAY,
                              child: IconButton(
                                onPressed: (){},
                                icon: FaIcon(FontAwesomeIcons.plus),
                                color: CustomColors.LIGHT_GRAY,
                                iconSize: 15,padding: EdgeInsets.all(0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
