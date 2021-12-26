import 'package:get/get.dart';
class HomeController extends GetxController{
  int currentindex=0;
  void updateIndex(int x){
    currentindex = x;
    update();
  }
}