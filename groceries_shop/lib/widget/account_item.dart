import 'package:flutter/material.dart';
Widget accountItem({required Image image,required String name,VoidCallback? onTap}){
  return Column(
    children: [
      const Divider(height: 1,),
      GestureDetector(
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  image,
                  const SizedBox(width: 20,),
                  Text(name, style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: "Gilroy"),),
                ],
              ),
              Image.asset("asset/images/backsang.png"),

            ],
          ),
        ),
        onTap: (){
          onTap!.call();
        }
        ,
      )
    ],
  );

}