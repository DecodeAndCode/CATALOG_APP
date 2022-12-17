import 'package:day1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/cart.dart';

class MyStore extends VxStore {
  //which model is getting manipulated add that model here
  late CatalogModel catalog;
  late CartModel cart;
  
  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
