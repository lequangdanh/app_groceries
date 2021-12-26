

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/controller/auth2_controller.dart';
import 'package:groceries_shop/controller/home_controller.dart';
import 'package:groceries_shop/view/cart/cart_screen.dart';

import 'package:groceries_shop/widget/account_item.dart';
class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10, right: 10
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
               StreamBuilder(
                 stream:FirebaseFirestore.instance.collection('users')
                   .doc(Authentication().userId).snapshots(),

                   builder: (context,snapshort){
                     if (snapshort.hasError) {
                       return const CircleAvatar(
                         radius: 27,
                       );
                     }
                     if (!snapshort.hasData) {
                       return const CircleAvatar(
                         radius: 27,
                       );
                     }
                   try{
                     var Document = snapshort.data as dynamic;
                     return  SizedBox(
                       child: Row(
                         children: [
                           Image.asset("asset/images/account1.png"),
                           const SizedBox(width: 10,),
                           Column(
                             children: [
                               Row(
                                 children: [
                                   Text("${Document!['user_name']}"),
                                   Image.asset("asset/images/account2.png"),
                                 ],
                               ),
                               Text("${Document!['email_login']}"),
                             ],
                           ),
                         ],
                       ),
                     );
                   }
                     catch(e){
                       return SizedBox(
                         child: Row(
                           children: [
                             Image.asset("asset/images/account1.png"),
                             const SizedBox(width: 10,),
                             Column(
                               children: [
                                 Row(
                                   children: [
                                     const Text("your name"),
                                     Image.asset("asset/images/account2.png"),
                                   ],
                                 ),
                                 const Text("your email"),
                               ],
                             ),
                           ],
                         ),
                       );
                     }
                   }
               ),
                const Padding(padding: EdgeInsets.only(bottom: 30)),
                accountItem(image: Image.asset("asset/icons/order.png"), name: "Orders",onTap: (){

                  Get.to(const CartScreen());
                }),
                accountItem(image: Image.asset("asset/icons/detail.png"), name: "My Details"),
                accountItem(image: Image.asset("asset/icons/address.png"), name: "Delivery Address"),
                accountItem(image: Image.asset("asset/icons/card.png"), name: "Payment Methods"),
                accountItem(image: Image.asset("asset/icons/cord.png"), name: "Promo Cord"),
                accountItem(image: Image.asset("asset/icons/bell.png"), name: "Notifecations "),
                accountItem(image: Image.asset("asset/icons/help.png"), name: "Help"),
                accountItem(image: Image.asset("asset/icons/about.png"), name: "About "),
                const Padding(padding: EdgeInsets.only(top: 40)),
                GestureDetector(
                  child: Container(
                    height: 67,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFF2F3F2)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Padding(padding: const EdgeInsets.only(left: 10),
                          child: Image.asset("asset/images/signout.png"),
                        ),
                        const Text("Log Out",style: TextStyle(fontSize: 18,color: Color(0xFF53B175),fontWeight: FontWeight.bold),),
                        const SizedBox(width: 20,),
                      ],
                    ),
                  ),
                   onTap: (){
                    Authentication().signOut();
                   },
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

