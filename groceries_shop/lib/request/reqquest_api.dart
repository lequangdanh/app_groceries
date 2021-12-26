import 'dart:convert';

import 'package:groceries_shop/model/product.dart';
import 'package:http/http.dart'as http;
const Api ="https://6193870fd3ae6d0017da8646.mockapi.io/api/todo";
class RequestApi{
 static Future<List<Product>> getProduct() async {
   final response = await http.get(Uri.parse(Api));
   if(response.statusCode==200)
     {
       var list = jsonDecode(response.body) as List<dynamic>;
       List<Product> product = list.map((e) => Product.fromJson(e)).toList();
       return product;
     }
   else{
     throw Exception("Failed");
   }
 }
}