import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/controller/product_controller.dart';
import 'package:groceries_shop/model/list_explore.dart';
import 'package:groceries_shop/widget/explore/explore.dart';


import 'package:groceries_shop/view/explore/beverages_screen.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListExplore controllerexplore = Get.find();
    ProductController productController = Get.find();
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10,bottom: 60),
      height: Get.height * 1,
      width: Get.width * 1,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: controllerexplore.listexplore.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                productController.selectproduct(controllerexplore.listexplore.toList()[index].name);
                Get.to(BeveragesScreen(search: (controllerexplore.listexplore.toList()[index].name),));
              },
              child: explores(

                  color: controllerexplore.listexplore.toList()[index].color,
                  image: controllerexplore.listexplore.toList()[index].image,
                  name: controllerexplore.listexplore.toList()[index].name),
            );
          }),
    );
  }
}
