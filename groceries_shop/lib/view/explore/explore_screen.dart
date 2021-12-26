import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/controller/product_controller.dart';
import 'package:groceries_shop/view/explore/explore_item.dart';

import 'beverages_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    ProductController productController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Find Products",style: TextStyle(fontSize: 20,color: Colors.black),),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(


          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                Padding(padding: const EdgeInsets.only(left: 10, right: 10,bottom: 20),
                  child: TextField(
                    controller: controller,
                      enableInteractiveSelection: false,
                       onSubmitted: (controller){
                         productController.selectproduct(controller);
                         Get.to(BeveragesScreen(search: controller,));

                       },
                      decoration: InputDecoration(

                          filled: true,
                          prefixIcon: const Icon(Icons.search),
                          hintText: "Search Store",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ))),
                ),

                const ExploreItem(),
              ],
            ),
          )
        ),
      ),
    );
  }
}
