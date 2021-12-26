import 'package:flutter/material.dart';
Widget buttonSum({required String name,required Color?colors,double?fontSize,double?withbutton,double?heightbutton,VoidCallback? onTap, String? total}){
  return total==null
      ?GestureDetector(
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
  )
      :GestureDetector(
    onTap: (){
      onTap!.call();
    },
    child: Container(
      padding: EdgeInsets.only(left: 40,right: 40),
      width: withbutton,
      height: heightbutton,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: colors,
      ),
      child: Center(
          child:

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 1,),
              Text(name, style: TextStyle(fontFamily: "GilroyLight",fontSize: fontSize?? 24, color: Colors.white, fontWeight: FontWeight.w600),),
              Container(
                width: 55,
                height: 15,
                decoration: BoxDecoration(
                  color: Color(0xFF489E67),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Text("\$ $total",style: TextStyle(color: Colors.black),),
              ),
            ],
          )

      ),

    ),
  );

}