import 'package:get/get.dart';
import 'package:groceries_shop/model/cart.dart';

class CartController extends GetxController{

  double sumcart=0;
  Map<int, Cart> _cart = {};
  Map<int, Cart> get carts {
    return {..._cart};
  }
  int get cartCount{
    return _cart.length;
  }
  void  cartCountt(){
     _cart.toString();
  }
  double get totalcart{
   double sum = 0;
    _cart.forEach((key, value) {
      sum += (value.price * value.soluong);

    });
    //update();
    return sum;
  }

  void addItem({required int cartid,required String images, required String name, required int capacity, required String measure,required double price, required int soluong, required int id}){
      if(_cart.containsKey(cartid)){
        _cart.update(cartid, (value) => Cart(image: value.image, name:value.name, capacity: value.capacity, measure: value.measure, price: value.price, soluong: value.soluong, id: value.id));
        update();
      }
      else{
        sumcart++;

        _cart.putIfAbsent(cartid, () => Cart(image:images, name:name, capacity:capacity , measure: measure, price: price,soluong: soluong, id: id));
        update();
      }
      update();
  }
  void removeItem(int cartid){
    sumcart--;
    _cart.remove(cartid);
    update();
  }
  void updateCong(int id){
    _cart.values.toList()[id].soluong++;
    update();
  }
  void updateTru(int id){

    if(_cart.values.toList()[id].soluong==0) {
      Get.back();
    } else
      {
        _cart.values.toList()[id].soluong--;
        update();
      }
    update();
  }


}