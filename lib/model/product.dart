// ignore: camel_case_types
class productlist {
  static List<Item> items = [
    // Item(
    //     id: 1,
    //     name: "Rahul Ranjan",
    //     desc: "cjjsdcjk jknjk jksdcjk dcjk cdk ",
    //     price: "999",
    //     image: "https://graphixmedia.net/sub-img/Rahul-Ranjan.jpg")
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final String price;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      // id: map["CatID"],
      // name: map["CatName"],
      // desc: map["CatDesc"],
      // price: map["Cat_Image"],
      // image: map["DiscountPrice"],

      id: map["CatID"],
      name: map["ProdName"],
      desc: map["CatName"],
      price: map["Prod_ImageURL1"],
      image: map["DiscountPrice"],
    );
  }
}
