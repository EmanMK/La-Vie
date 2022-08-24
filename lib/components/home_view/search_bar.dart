import 'package:flutter/material.dart';
import 'package:untitled8/components/styles/colors.dart';
import 'package:untitled8/components/styles/text_styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: CustomColors.LIGHTER_GRAY,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 40,
          width: 299,
          child: TextFormField(
            decoration: InputDecoration(
              // disabledBorder: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical:6,),
              prefixIcon: Icon(Icons.search,color: CustomColors.LIGHT_GRAY,size: 16,),
              hintText:'search',
              hintStyle:TextStyles.LABELS,
            ),
          ),
        ),//TextFormField
        SizedBox(width:5,),
        Container(
          height: 40,
          width: 40,
          decoration:BoxDecoration(
              color: CustomColors.PRIMARLY,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Icon(Icons.shopping_cart_outlined,size: 22,color: Colors.white,),
        ),
      ],
    );
  }
}
