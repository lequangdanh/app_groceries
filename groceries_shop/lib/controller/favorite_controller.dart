import 'package:get/get.dart';
import 'package:groceries_shop/model/favorite.dart';
class FavoriteController extends GetxController{
  double sumfavorite=0;
  Map<int, Favorite> _favorite = {};
  Map<int, Favorite> get favorites {
    return {..._favorite};
  }
  int get favoriteCount{
    return _favorite.length;
  }



  void addItem({required int favoritetid,required String images, required String name, required int capacity, required String measure,required double price, required int id}){
    if(_favorite.containsKey(favoritetid)){
      _favorite.update(favoritetid, (value) => Favorite(image: value.image, name:value.name, capacity: value.capacity ,measure: value.measure, price: value.price,  id: value.id));
      update();
    }
    else{
      sumfavorite++;

      _favorite.putIfAbsent(favoritetid, () => Favorite(image:images, name:name, capacity: capacity, measure: measure, price: price, id: id));
      update();
    }
    update();
  }
  void removeItem(int favoriteid){
    sumfavorite--;
    update();
    _favorite.remove(favoriteid);
    update();
  }
}