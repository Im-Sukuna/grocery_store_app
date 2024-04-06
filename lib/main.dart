import 'package:flutter/material.dart';
import 'package:grocery_store_app/models/cart_model.dart';
import 'package:provider/provider.dart';
import 'intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPages(),
      ),
    );
  }
}
