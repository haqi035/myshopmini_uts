import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/product.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyShopMini());
}

class MyShopMini extends StatelessWidget {
  const MyShopMini({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      Category(id: "makanan", name: "Makanan", image: "assets/makanan/aneka_makanan.jpg"),
      Category(id: "minuman", name: "Minuman", image: "assets/minuman/aneka_minuman.jpg"),
      Category(id: "elektronik", name: "Elektronik", image: "assets/elektronik/aneka_elektronik.jpg"),
    ];

    final products = [
      Product(id: "p1", categoryId: "makanan", name: "Nasi Goreng Ayam", price: 15000, image: "assets/makanan/Nasi Goreng Ayam.jpg"),
      Product(id: "p2", categoryId: "makanan", name: "Mie Ayam", price: 15000, image: "assets/makanan/Mie Ayam.jpg"),
      Product(id: "p3", categoryId: "makanan", name: "Mc Burger Combo", price: 25000, image: "assets/makanan/Mc Burger Combo.jpg"),

      Product(id: "p4", categoryId: "minuman", name: "Matcha Series", price: 5000, image: "assets/minuman/Ice Matcha latte.jpg"),
      Product(id: "p5", categoryId: "minuman", name: "Pop Ice", price: 5000, image: "assets/minuman/Pop Ice Taro.jpg"),

      Product(id: "p6", categoryId: "elektronik", name: "Handphone", price: 21499000, image: "assets/elektronik/Iphone 17 pro.jpg"),
      Product(id: "p7", categoryId: "elektronik", name: "Handphone", price: 22999000, image: "assets/elektronik/Samsung s25 Ultra.jpg"),
    ];

    return MaterialApp(
      home: HomeScreen(categories: categories, products: products),
      debugShowCheckedModeBanner: false,
    );
  }
}
