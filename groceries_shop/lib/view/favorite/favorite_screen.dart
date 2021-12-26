import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:groceries_shop/view/home/home_screen.dart';
import 'package:groceries_shop/widget/buttons.dart';
import 'package:groceries_shop/widget/favorurite/favorite_list.dart';
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
          child: Text("Favorurite",style: TextStyle(color: Colors.black),),
        ),



      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                const Divider(height: 1,),
                const ListFavorite(),
                buttons(name: "Add All To Cart", colors: const Color(0xFF53B175),heightbutton: 57,
                  onTap: (){
                    Get.to(const HomeScreen());
                  }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
