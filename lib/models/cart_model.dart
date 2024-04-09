import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopItems = [
    ['Avocados', '4.00', 'lib/images/avocado.png', Colors.green],
    ['Bananas', '2.50', 'lib/images/banana.png', Colors.yellow],
    ['Chickens', '12.80', 'lib/images/chicken.png', Colors.brown],
    ['Water', '1.00', 'lib/images/water.png', Colors.blue],
  ];
  List _cartItems = [];
  get shopItems => _shopItems;
  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }
  void removeItemsFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems [i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}