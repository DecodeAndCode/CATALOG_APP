class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iphone 14 pro",
        desc: "Apple iphone 16 Gen",
        price: 999,
        color: "#33505a",
        image:
            "https://www.google.com/imgres?imgurl=https%3A%2F%2Fstore.storeimages.cdn-apple.com%2F4668%2Fas-images.apple.com%2Fis%2Fiphone-14-pro-model-unselect-gallery-1-202209%3Fwid%3D5120%26hei%3D2880%26fmt%3Dp-jpg%26qlt%3D80%26.v%3D1660753619946&imgrefurl=https%3A%2F%2Fwww.apple.com%2Fin%2Fshop%2Fbuy-iphone%2Fiphone-14-pro&tbnid=xkLVUZzvTo_AcM&vet=12ahUKEwi60rG0icz7AhX6oNgFHVBvCjEQMygAegUIARCgAg..i&docid=FmiZDA68gfUBLM&w=5120&h=2880&itg=1&q=iphone%2014%20pro%20max&client=safari&ved=2ahUKEwi60rG0icz7AhX6oNgFHVBvCjEQMygAegUIARCgAg"
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
