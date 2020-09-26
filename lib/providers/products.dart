import 'package:flutter/material.dart';
import 'file:///C:/flutter_windows_1.20.1-stable/proyect/prueba_final/lib/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _items =[
    Product(
      id: 'a1',
      title:'senor  2005',
      descripcion:'muy bueno ',
      km: 1600000,
      price: '98000',
      image01: 'https://img.freepik.com/foto-gratis/coches-modernos-estan-sala-estudio_37416-14.jpg?size=626&ext=jpg',
      image02: 'https://us.123rf.com/450wm/leotroyanski/leotroyanski1608/leotroyanski160800016/61958728-vector-de-ne%C3%B3n-rojo-coche-ilustraci%C3%B3n-auto-lineal-sobre-un-fondo-negro-.jpg?ver=6',
      image03: 'https://us.123rf.com/450wm/leotroyanski/leotroyanski1608/leotroyanski160800016/61958728-vector-de-ne%C3%B3n-rojo-coche-ilustraci%C3%B3n-auto-lineal-sobre-un-fondo-negro-.jpg?ver=6',
      phone: '+57 3124494200',
      whatsapp: 3124494200,
    ),
    Product(
      id: 'a2',
      title:'senoraaaa  2005',
      descripcion:'muy bueno ',
      km: 1600000,
      price: '98000',
      image01: 'https://us.123rf.com/450wm/leotroyanski/leotroyanski1608/leotroyanski160800016/61958728-vector-de-ne%C3%B3n-rojo-coche-ilustraci%C3%B3n-auto-lineal-sobre-un-fondo-negro-.jpg?ver=6',
      image02: 'https://us.123rf.com/450wm/leotroyanski/leotroyanski1608/leotroyanski160800016/61958728-vector-de-ne%C3%B3n-rojo-coche-ilustraci%C3%B3n-auto-lineal-sobre-un-fondo-negro-.jpg?ver=6',
      image03: 'https://us.123rf.com/450wm/leotroyanski/leotroyanski1608/leotroyanski160800016/61958728-vector-de-ne%C3%B3n-rojo-coche-ilustraci%C3%B3n-auto-lineal-sobre-un-fondo-negro-.jpg?ver=6',
      phone: '+57 3124494200',
      whatsapp: 3124494200,
    )
  ];


  List <Product> get items {
    return [..._items];
  }

  Product findById (String id){
    return _items.firstWhere((prod) => prod.id == id);
  }
}