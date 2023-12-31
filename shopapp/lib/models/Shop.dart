import 'package:flutter/material.dart';
import 'package:shopapp/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Products> _shop = [
    Products("belt", "leather belt", 35, ""),
    Products("watch", "Chronograph Watch", 35, ""),
    Products("Glasses", "Glasses ", 35, ""),
    Products("Hoodie", "polyest hoodie", 35, ""),
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
