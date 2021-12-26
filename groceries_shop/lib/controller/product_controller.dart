import 'package:get/get.dart';
import 'package:groceries_shop/model/product.dart';
import 'package:groceries_shop/request/reqquest_api.dart';
import 'package:http/http.dart';

class ProductController extends GetxController {
  List<Product> listdata = <Product>[];
  List<Product> listexplore = <Product>[];
  List<Product> finddata = <Product>[];
  bool isLoading = false;
  int qantity = 1;
  late Iterable<Product> findata;

  void onInit() {
    super.onInit();
    getdata();
  }

  Future<void> getdata() async {
    isLoading = true;
    update();
    var result = await RequestApi.getProduct();
    if (result != null) {
      listdata = result;
      update();
    } else {
      print("looi");
    }
    isLoading = false;
    update();
  }

  void Increment() {
    qantity++;
    update();
  }

  void Decrement() {
    if (qantity == 0) {
      Get.back();
      update();
    } else {
      qantity--;
      update();
    }
  }

  void updatequntity() {
    qantity = 1;
    update();
  }

  List<Product> selectproduct(String type) {
    listdata.forEach((element) {
      if (listexplore.isEmpty &&
          (element.type.contains(type) || element.name.contains(type))) {
        listexplore.add(element);
        update();
      } else if (listexplore.isNotEmpty &&
          (element.type.contains(type) || element.name.contains(type))) {
        listexplore.add(element);
        update();
      }
    });
    return listexplore;
  }
  void deletelist(){
    listexplore.clear();
    update();
  }
}
