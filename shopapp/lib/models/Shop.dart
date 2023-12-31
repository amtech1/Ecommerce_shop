import 'package:flutter/material.dart';
import 'package:shopapp/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Products> _shop = [
    Products("belt", "leather belt", 35, "assets/download1.jpeg"),
    Products("watch", "Chronograph Watch", 35, "assets/watch.jpeg"),
    Products("Glasses", "Glasses ", 35, "assets/download33.jpeg"),
    Products("Hoodie", "polyest hoodie", 35, "assets/blackhoodie.jpeg"),
  ];

  final List<Products> _cart = [];
  List<Products> get shop => _shop;
  List<Products> get cart => _cart;
  void addtocart(Products item) {
    _cart.add(item);
    notifyListeners();
  }

  void removefromcart(Products item) {
    _cart.remove(item);

    notifyListeners();
  }
}
