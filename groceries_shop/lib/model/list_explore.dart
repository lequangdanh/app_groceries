import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groceries_shop/model/explore.dart';
import 'package:get/get.dart';

class ListExplore {
  List<Explore> listexplore=[
   Explore(image: Image.asset("asset/images/explore.png"), color: Color(0xFF53B175), name: "Frash Fruits & Vegetable"),
    Explore(image: Image.asset("asset/explore/oil.png"), color: Color(0xFFF8A44C), name: "Cooking Oil & Ghee"),
    Explore(image: Image.asset("asset/explore/meat.png"), color: Color(0xFFF7A593), name: "Meat & Fish"),
    Explore(image: Image.asset("asset/explore/bakery.png"), color: Color(0xFFD3B0E0), name: "Bakery & Snacks"),
    Explore(image: Image.asset("asset/explore/egg.png"), color: Color(0xFFFDE598), name: "Dairy & Eggs"),
    Explore(image: Image.asset("asset/explore/beverage.png"), color: Color(0xFFB7DFF5), name: "Beverages"),

  ];
}