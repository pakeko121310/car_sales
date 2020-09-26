import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/products_overview_screen.dart';
import 'screens/product_detail.dart';
import 'package:provider/provider.dart';
import 'package:prueba_final/providers/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (ctx)=> Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: ("carros"),
        theme: ThemeData(
          primarySwatch: Colors.red
        ),
        initialRoute: homescreen.routeName,
        routes: {
          homescreen.routeName:(ctx)=> homescreen(),
          ProductOverviewScreen.routeName: (ctx) => ProductOverviewScreen(),
          ProductDetail.routeName:(ctx)=> ProductDetail(),
        },
      ),
    );
  }
}


