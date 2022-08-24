import 'package:flutter/material.dart';
import 'package:untitled8/components/styles/colors.dart';
import 'package:untitled8/components/styles/text_styles.dart';

class Filters extends StatelessWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:30,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder:(context, index) =>
            Container(
              padding: EdgeInsets.all(3),
              decoration:BoxDecoration(
                  color: CustomColors.LIGHTER_GRAY,
                  borderRadius: BorderRadius.circular(7)
              ),
              width: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('plants',style:TextStyles.LABELS),
                ],
              ),
            )
        ,
        separatorBuilder: (context, index) => SizedBox(width: 10,),
        itemCount: 15,
      ),
    );
  }
}
