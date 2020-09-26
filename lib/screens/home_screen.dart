import 'package:flutter/material.dart';
import 'package:prueba_final/screens/products_overview_screen.dart';



// ignore: camel_case_types
class homescreen extends StatelessWidget {

  static const routeName = ("home-screen");
  selectProductsOverview(BuildContext context){
    Navigator.of(context).pushNamed(ProductOverviewScreen.routeName);
  }
  

  final background = Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/back.jpg'),
        fit: BoxFit.cover,
      )
    ),
  );

  final whiteopacity = Container(
    color: Colors.white38,
  );

  final logo = Image.asset(
    'images/logo.png',
    width:300,
    height: 300,
  );

  @override
  Widget build(BuildContext context) {

    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
      fit: StackFit.expand,
        children: [
          background,
          whiteopacity,
        SingleChildScrollView(
          child: Container(
          height: deviceSize.height,
            width: deviceSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SafeArea(
                  child: Column(
                    children: [
                      logo,
                    ],
                  ),
                ),
                RaisedButton(
                  child: Text("press me",
                  style: TextStyle(
                    color: Colors.white
                  ) ,),
                  color: Colors.red,
                  onPressed: ()=> selectProductsOverview(context),

                )
              ],
            ),
          ),
        )]
        ,
      ),
    );
  }
}
