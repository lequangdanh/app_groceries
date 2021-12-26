import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:groceries_shop/controller/auth2_controller.dart';
import 'package:groceries_shop/controller/product_controller.dart';
import 'package:groceries_shop/view/explore/beverages_screen.dart';
import 'package:groceries_shop/widget/home/list_view_groceries.dart';
import 'package:groceries_shop/widget/home/list_view_home.dart';
import 'package:groceries_shop/widget/home/slider.dart';

class ShopHomeScreen extends StatelessWidget {
  const ShopHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.find();
    var controller = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Image.asset("asset/images/carrot.png"),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("asset/images/local.png"),
                      StreamBuilder(
                        stream: FirebaseFirestore.instance.collection("users").
                        doc(Authentication().userId).snapshots(),
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
                          try
                            {
                              var document = snapshort.data as dynamic;

                              return Text(

                                "${document!["zone_local"]}, ${document!["area_local"]}",
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              );
                            }
                            catch(e)
                            {
                              return const Text("Enter your zone and area");
                            }

                          }
                      ),
                    ],
                  ),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              TextField(
                controller: controller,
                  onSubmitted: (contro){
                      productController.selectproduct(contro);
                      Get.to(BeveragesScreen(search: contro,));
                  },
                  decoration: InputDecoration(
                      filled: true,
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search Store",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              sliders(
                  image1: Image.asset("asset/images/banner.png",fit: BoxFit.cover,),
                  image2: Image.asset("asset/images/banner.png",fit: BoxFit.cover,),
                  image3: Image.asset("asset/images/banner.png",fit: BoxFit.cover,),
                height: 115
              ),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Exclusive Offer",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF53B175)),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              const ListItem(),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Best Selling",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF53B175)),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              const ListItem(),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Groceries",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF53B175)),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              const ListviewGroceries(),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              const ListItem(),
            ],
          ),
        ),
      ),
    );
  }
}
