import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget favoritesItem({required Image image, required String name, required int S, required String K,required double price, VoidCallback? onTap}){
  return Padding(
    padding: const EdgeInsets.only(top: 20,bottom: 20),
    child: GestureDetector(
      onTap: (){
        onTap!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 55,
                width: 31,
                child: image,
              ),
              const SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  Text("${(S)}${(K)},Price",style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w200,fontFamily: "Gilroyl"),),
                ],
              ),
            ],
          ),
          Row(
              children: [
                Text("\$${(price)}",style:const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Gilroy")),
               const SizedBox(width: 20,),

                 Image.asset("asset/images/backra.png"),


              ],
          ),
        ],

      ),
    ),
  );
}