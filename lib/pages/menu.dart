import 'package:flutter/material.dart';
import 'package:sample/services/product.dart';
import 'package:sample/services/menuCard.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List products = <Product>[
    Product(productName: "Maki 'Dilaw' Vinyl LP", price: 2499.99),
    Product(productName: "Maki 'Dilaw' Fanlight", price: 1699.99),
    Product(productName: "Maki 'Dilaw' CD", price: 699.99),
    Product(productName: "Maki 'Dilaw' Tshirt", price: 499.99),
    Product(productName: "Maki 'Dilaw' Photocard Set", price: 399.99),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('This is Menu'),
        backgroundColor: Colors.yellow[300],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: products.map((product) =>
             Menucard(product: product)).toList(),
        ),
      )
    );
  }
}
