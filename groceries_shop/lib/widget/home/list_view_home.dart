import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:groceries_shop/controller/product_controller.dart';
import 'package:groceries_shop/view/product_detail.dart';
import 'package:groceries_shop/widget/home/item.dart';
class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
        builder: (data)=> data.isLoading? const Center(child:CircularProgressIndicator(),

        ):SizedBox(

          height: 250,
          child:  ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 20,),
            itemCount: (data.listdata).length,
            itemBuilder: (context,index){
              return GestureDetector(
                child:  items(imagesitem: Image.asset("asset/items/${(data.listdata[index].image)}.png"), nameitem: (data.listdata[index].name), capacity: data.listdata[index].capacity, measure: (data.listdata[index].measure), priceitem: double.parse(data.listdata[index].price.toString())),
                onTap: (){
                   Get.to(ProductDetail(index: index));
                },
              );
            }


          ),
        ),
    );
  }
}
