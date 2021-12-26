import 'package:flutter/material.dart';
Widget groceriesItem({required Image image, required Color color, required String name}){
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),

      width: 249,
      height: 105,
      child: Row(

        children: [
          const SizedBox(width: 20,),
          image,
          const SizedBox(width: 50,),
          Text((name),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

        ],
      ),
    );
}