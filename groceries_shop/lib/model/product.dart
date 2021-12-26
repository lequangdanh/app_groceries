class Product {
  late String image;
  late String name;
  late int capacity;
  late String measure;
  late int price;
  late String detail;
  late String type;
  late String id;

  Product(
      {required this.image,
        required this.name,
        required this.capacity,
        required this.measure,
        required this.price,
        required this.detail,
        required this.type,
        required this.id});

  Product.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    capacity = json['s'];
    measure = json['k'];
    price = json['price'];
    detail = json['detail'];
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['s'] = capacity;
    data['k'] = measure;
    data['price'] = price;
    data['detail'] = detail;
    data['type'] = type;
    data['id'] = id;
    return data;
  }
}