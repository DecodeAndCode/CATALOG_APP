class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iphone 14",
        desc: "Apple iphone 16 Gen",
        price: 999,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLK0I1_MpaYozp8RzC49bvYNsNWNu9AEkAqA&usqp=CAU"
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}
