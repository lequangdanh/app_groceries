import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/controller/cart_controller.dart';
import 'package:groceries_shop/controller/favorite_controller.dart';
import 'package:groceries_shop/controller/home_controller.dart';
import 'package:groceries_shop/controller/product_controller.dart';
import 'package:groceries_shop/model/list_explore.dart';
import 'package:groceries_shop/view/end/account_screen.dart';
import 'package:groceries_shop/view/cart/cart_screen.dart';
import 'package:groceries_shop/view/home/shop_home_screen.dart';

import '../explore/explore_screen.dart';
import '../favorite/favorite_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime? lastPressed;
  HomeController homeController = Get.put(HomeController());
  late int _currentIndex=homeController.currentindex;
  CartController controller = Get.put(CartController());
  FavoriteController controllerfavorite = Get.put(FavoriteController());
  ListExplore controllerexplore = Get.put(ListExplore());
  ProductController productController = Get.put(ProductController());
  final tap=[
    const ShopHomeScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const FavoriteScreen(),
    const AccountScreen(),

  ];





  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: WillPopScope(
          onWillPop: () async {
            final now = DateTime.now();
            final maxDuration = Duration(seconds: 3);
            final isWarning = lastPressed == null ||
                now.difference(lastPressed!) > maxDuration;

            if (isWarning) {
              lastPressed = DateTime.now();

              final snackBar = SnackBar(
                content: const Text('Ấn back 2 lần để thoát khỏi ứng dụng'),
                duration: maxDuration,
              );

            ScaffoldMessenger.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(snackBar);


              return  false;
            } else {
              return exit(0);
            }
          },
          child: tap[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        items: [

          BottomNavigationBarItem(icon: Image.asset("asset/images/iconshop.png"),

        label: "Shop",

          ),
          BottomNavigationBarItem(icon: Image.asset("asset/images/iconexplore.png"),
            label: "Explore",

          ),
          BottomNavigationBarItem(icon: Image.asset("asset/images/iconcart.png"),
              label: "Cart",
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(icon: Image.asset("asset/images/iconfavorite.png"),
              label: "Faverite",

          ),
          BottomNavigationBarItem(icon: Image.asset("asset/images/iconaccount.png"),
            label: "Account",

          ),

        ],
        onTap: (index){
          setState(
                  (){
                _currentIndex = index;
              }
          );
        },
      ),
    );
  }
}

