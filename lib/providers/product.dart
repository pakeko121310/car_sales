import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{

  final String id;
  final String title;
  final String descripcion;
  final int km;
  final String price;
  final String image01;
  final String image02;
  final String image03;
  final String phone;
  final int whatsapp;
  bool favorite;

  Product({
    @required this.id,
    @required this.title,
    @required this.descripcion,
    @required this.image01,
    @required this.image02,
    @required this.image03,
    @required this.km,
    @required this.phone,
    @required this.price,
    @required this.whatsapp,
    this.favorite =false,
  });
}