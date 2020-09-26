import 'package:flutter/material.dart';
import 'package:prueba_final/screens/product_detail.dart';
import 'package:provider/provider.dart';
import 'file:///C:/flutter_windows_1.20.1-stable/proyect/prueba_final/lib/models/product.dart';
import '../models/';

class ProductItem extends StatelessWidget {

  final String id;
  final String title;
  final String imag


  @override
  Widget build(BuildContext context) {

    final product = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
    child: GridTile(
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(
            ProductDetail.routeName,
            arguments: product.id,
          );
        },
        child: Image.network(
          product.image01,
          fit: BoxFit.cover,
    ),
      ),
      footer: Container(
      height: 40,
      child: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          iconSize: 25,
          alignment: Alignment.centerLeft,
          icon: Icon(Icons.favorite),
          onPressed: (){},
        ),
        title: Text(
          product.title,
          style: TextStyle(fontSize: 15),
          softWrap: true,
          overflow: TextOverflow.fade,
          textAlign: TextAlign.center,
        ),
        trailing: Row(
          children: [
            Icon(Icons.attach_money),
            Text(
              product.price,
              style: TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.end,
            ),

          ],
        ),
      ),
    ),
    ),
    );
  }
}


