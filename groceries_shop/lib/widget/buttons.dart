import 'package:flutter/material.dart';
Widget buttons({required String name,required Color?colors,double?fontSize,double?withbutton,double?heightbutton,VoidCallback? onTap}){
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

           Text(name, style: TextStyle(fontFamily: "GilroyLight",fontSize: fontSize?? 24, color: Colors.white, fontWeight: FontWeight.w600),)

      ),

    ),
  );

}