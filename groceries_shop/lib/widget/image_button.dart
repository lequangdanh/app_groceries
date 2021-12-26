import 'package:flutter/material.dart';

Widget imageButtons({required String name,required Color?colors,required Image imagebutton,  double?fontSize,double?withbutton,double?heightbutton,VoidCallback? onTap}){
  return GestureDetector(
    onTap: (){
      onTap!.call();
    },
    child: Container(
      width: withbutton,
      height: heightbutton,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: colors,
      ),
      child: Center(
          child:

          Row(
            children: [
              const SizedBox(width: 20,),
              imagebutton,
              const SizedBox(width: 30,),
              Text(name, style: TextStyle(fontFamily: "GilroyLight",fontSize: fontSize?? 24, color: Colors.white, fontWeight: FontWeight.w600),)
            ],
          )

      ),

    ),
  );

}