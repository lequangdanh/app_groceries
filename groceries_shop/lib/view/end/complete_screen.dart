import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/controller/home_controller.dart';
import 'package:groceries_shop/view/cart/cart_screen.dart';
import 'package:groceries_shop/view/home/home_screen.dart';
import 'package:groceries_shop/widget/buttons.dart';
class CompleteScreen extends StatelessWidget {
  const CompleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80,bottom: 10,left: 10,right: 10),
        child: Column(
          children: [
            SizedBox(
              height: Get.height*0.4,
              width: Get.width*1,
              child: Image.asset("asset/images/acepp.png"),
            ),

            const Text("Your Order has been ",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            const Text("aceppted ",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            const Text("Your items has been placcd and is on",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
            const Text("it’s way to being processed",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
            const Padding(padding: EdgeInsets.only(bottom: 50)),
            buttons(name: "Track Order", colors: const Color(0xFF53B175),withbutton: 364,heightbutton: 67,
              onTap: (){
               Get.to(const CartScreen());
              }
            ),
            const Padding(padding: EdgeInsets.only(bottom: 15)),
           GestureDetector(
             child:  const Text("Back to home",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
             onTap: (){
               homeController.updateIndex(0);
               Get.to(const HomeScreen());

             },
           ),

          ],
        ),
      ),
    );
  }
}
