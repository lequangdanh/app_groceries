import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cartItem({required Image image,required String name,required int capacity, required String measure, required int quantity, required double price, required VoidCallback? onTap,required VoidCallback? onTaptru,required VoidCallback? onTapcong}){

  return Padding(

    padding: const EdgeInsets.only(top: 20,bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
                height: 55,
                width: 69,
                child: image
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Gilroy"),),
                Text("${(capacity)}${(measure)},Price",style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w200,fontFamily: "Gilroyl"),),
                Row(
                  children: [
                    GestureDetector(
                      child: Image.asset("asset/images/trucart.png"),
                      onTap: (){
                        onTaptru!.call();
                      },
                    ),
                    const SizedBox(width: 10,),
                    Text("${(quantity)}",),
                    const SizedBox(width: 10,),
                    GestureDetector(
                      child: Image.asset("asset/images/congcart.png"),
                      onTap: (){
                        onTapcong!.call();
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        Column(

          children: [
            GestureDetector(
              child: Image.asset("asset/images/cancel.png"),
              onTap: (){
                onTap!.call();
              },
            ),
            const SizedBox(height: 40,),
            Text("\$${(price)}",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
          ],
        ),
      ],
    ),
  );
}
