import 'package:flutter/material.dart';
import 'package:groceries_shop/widget/home/groceriesitem.dart';
class ListviewGroceries extends StatelessWidget {
  const ListviewGroceries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 107,
      child:  ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 20,),
        itemCount: 4,
        itemBuilder: (context,index)=>
           groceriesItem(image: Image.asset("asset/images/groceries1.png"), color: const Color(0xFFF8A44C), name: "Pulses"),

      ),
    );
  }
}
