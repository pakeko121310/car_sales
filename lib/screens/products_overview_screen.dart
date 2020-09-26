import 'package:flutter/material.dart';
import 'package:prueba_final/widgets/products_grid.dart';

class ProductOverviewScreen extends StatelessWidget {

  static const routeName = "Product-Overview-Screen";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("products overview "),
      ),
      body: productsGrid(),
    );
  }
}


