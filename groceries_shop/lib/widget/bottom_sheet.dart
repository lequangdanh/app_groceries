
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/controller/cart_controller.dart';
import 'package:groceries_shop/view/end/complete_screen.dart';
import 'package:groceries_shop/widget/buttons.dart';
void onpressButton(){
  CartController cartController = Get.find();
  Get.bottomSheet(

         Container(
          height: Get.height*0.6,
          decoration: const BoxDecoration(
            color: Color(0xFFF2F3F2),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(top: 15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Check out",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    Image.asset("asset/images/cancel.png"),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 15)),
                const Divider(height: 1,),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Delivery",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                    Row(
                      children: [
                        const Text("Select Method",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Image.asset("asset/images/backsang.png"),
                      ],
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                const Divider(height: 1,),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Pament",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                    Row(
                      children: [
                        Image.asset("asset/images/card.png"),
                        Image.asset("asset/images/backsang.png"),
                      ],
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                const Divider(height: 1,),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Promo Code",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                    Row(
                      children: [
                        const Text("Pick discount",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Image.asset("asset/images/backsang.png"),
                      ],
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                const Divider(height: 1,),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Total Cost",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                    Row(
                      children: [
                        Text("${(cartController.totalcart)}",style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                        Image.asset("asset/images/backsang.png"),
                      ],
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                const Divider(height: 1,),
                const Padding(padding: EdgeInsets.only(bottom: 15)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("By placing an order you agree to our",style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                      ,

                    )),
                    RichText(
                      text: const TextSpan(

                          children: [

                            TextSpan(
                                text: " Terms ",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black)),
                            TextSpan(
                                text: " And",
                                style: TextStyle(
                                    fontSize: 14,  fontWeight: FontWeight.w400,color: Colors.black)),
                            TextSpan(
                                text: " Conditions.",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black)),

                          ]),
                    ),

                  ],
                ),

                const Padding(padding: EdgeInsets.only(bottom: 10)),
                buttons(name: "Place Order", colors: const Color(0xFF53B175),heightbutton: 67,
                  onTap: (){
                    Get.to(const CompleteScreen());
                  }
                ),

              ],
            ),
          ),
        ),


);
}