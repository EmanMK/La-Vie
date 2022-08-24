import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled8/components/styles/colors.dart';
import 'package:untitled8/bloc/my_cart/cart_card_counter/cart_card_counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCartCard extends StatefulWidget {
  const MyCartCard({Key? key}) : super(key: key);

  @override
  _MyCartCardState createState() => _MyCartCardState();
}

class _MyCartCardState extends State<MyCartCard> {

  double? number=0,total=0,price=200;
  String title="Cactus plant";

  @override
  Widget build(BuildContext context) {
    CartCardCounterCubit ItemCounterCubit=CartCardCounterCubit.get(context);
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(5,7)
            )
          ],
        ),
        child: Row(
          children: [
            Container(
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child:Image.asset("assets/images/cart_plant.png")
            ),
            SizedBox(width:10,),
            Expanded(
              child: Container(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,style:TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),),
                    Text('$price EGP',style:TextStyle(
                      color: CustomColors.PRIMARLY,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration:BoxDecoration(
                            color: CustomColors.BG_LIGHT_GRAY,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 114,
                          height: 40,

                          child:BlocConsumer<CartCardCounterCubit, CartCardCounterState>(
                          listener: (context, state) {},
                          builder: (context, state) {
                            return Row(
                              // TODO: REDUCE MARGIN ON THE COUNTER
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () =>
                                      BlocProvider.of<CartCardCounterCubit>(
                                          context).decreaseItemConter(),
                                  icon: FaIcon(FontAwesomeIcons.minus,
                                      color: CustomColors.PRIMARLY, size: 17),
                                ),
                                Text('${BlocProvider
                                    .of<CartCardCounterCubit>(context)
                                    .itemCounter}',),
                                IconButton(
                                    onPressed: () =>
                                        BlocProvider.of<CartCardCounterCubit>(
                                            context).increaseItemConter(),
                                    icon: Icon(Icons.add,
                                      color: CustomColors.PRIMARLY,)),
                              ],
                            );
                          }),
                        ),
                        FaIcon(FontAwesomeIcons.trash,color: CustomColors.PRIMARLY,size: 20,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}
