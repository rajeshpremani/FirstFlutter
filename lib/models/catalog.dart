

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item.named(this.id, this.name, this.desc, this.price, this.color, this.image);

}

class CatalogModel{
  static final items = [
    Item.named(1, "iPhone", "Apple iphone", 999, "#33505a", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ300EJa_aFbv4hJyMpFT-Azy0a3PeYh5a6OA&usqp=CAU")
   // Item.named(id: 1,
   //     name: "iPhone",
   //     desc:"Apple iPhone",
   //     price: 999,
   //     color: "#33505a",
   //     image:""),
  ];
}