import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopItems = [
    ['Avocado\'s', '4.00', 'lib/images/avocado.png', Colors.green],
    ['Banana\'s', '2.50', 'lib/images/banana.png', Colors.yellow],
    ['Chicken\'s', '12.80', 'lib/images/chicken.png', Colors.brown],
    ['Water', '1.00', 'lib/images/water.png', Colors.blueAccent],
  ];
  get shopItems => _shopItems;
}