import 'package:flutter/material.dart';

Widget explores({required Color color, required Image image, required String name}){
  return Container(
    width: 174,
     height: 189,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10),
       color: color
     ),
    child: Padding(
      padding: const EdgeInsets.only(left: 30,right: 30),
      child: Column(
             children: [
                SizedBox(height: 75,
                  child: image,
                ),
                const Padding(padding: EdgeInsets.only(top: 15)),
                Text(name,style: const TextStyle(fontSize: 16,fontFamily: "Gilroy"),),
             ],
      ),
    ),
  );
}