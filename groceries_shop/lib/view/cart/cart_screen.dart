import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/controller/cart_controller.dart';

import 'package:groceries_shop/widget/bottom_sheet.dart';
import 'package:groceries_shop/widget/buttom_sum.dart';

import 'package:groceries_shop/widget/cart/list_cart_item.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(child: Text("My Cart",style: TextStyle(fontSize: 20,color: Colors.black),),),

      ),
      body: SingleChildScrollView(
        child: SafeArea(


            child: GetBuilder<CartController>(
              init: CartController(),
              builder: (controller)=>Container(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 20),
                height: Get.height*1,
                width: Get.height*1,
                child: Column(
                  children: [
                    const Divider(height: 1,),
                    const ListCartItem(),

                    buttonSum(name: "Go to Checkout", colors: const Color(0xFF53B175),heightbutton: 67,
                       total:  controller.totalcart.toString(),
                        onTap: (){
                          onpressButton();
                        }
                    ),


                  ],
                ),
              ),
            ),
          ),
        ),

    );
  }
}
