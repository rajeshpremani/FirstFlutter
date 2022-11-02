

// class Item2 {
//   final int id;
//   final String name;
//   final String desc;
//   final num price;
//   final String color;
//   final String image;
//
//   Item.name(this.id, this.name, this.desc, this.price, this.color, this.image);
//
//   Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
//
//   factory Item.fromMap(Map<String, dynamic> map){
//     return Item(
//       id: map["id"],
//       name: map["name"],
//       desc: map["desc"],
//       color: map["color"],
//       image: map["image"],
//       price: map["price"]
//     );
//   }
// }

// class Item {
//     List<Product> products;
//
//     Item({this.products});
//
//     factory Item.fromJson(Map<String, dynamic> json) {
//         return Item(
//             products: json['products'] != null ? (json['products'] as List).map((i) => Product.fromJson(i)).toList() : null,
//         );
//     }
//
//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = new Map<String, dynamic>();
//         if (this.products != null) {
//             data['products'] = this.products.map((v) => v.toJson()).toList();
//         }
//         return data;
//     }
// }

class Item {
    String color;
    String desc;
    int id;
    String image;
    String name;
    int price;

    Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

    factory Item.fromJson(Map<String, dynamic> json) {
        return Item(
            color: json['color'],
            desc: json['desc'],
            id: json['id'],
            image: json['image'],
            name: json['name'],
            price: json['price'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['color'] = this.color;
        data['desc'] = this.desc;
        data['id'] = this.id;
        data['image'] = this.image;
        data['name'] = this.name;
        data['price'] = this.price;
        return data;
    }
}

class CatalogModel{
  static List<Item> items = [


  ];
}