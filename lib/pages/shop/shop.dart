import 'package:easybook/component/bottomBar.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget{
  const Shop({super.key});
  @override
  State<StatefulWidget> createState() {
    return ShopState();
  }

}

class ShopState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Text('书城'),
    ),
    bottomNavigationBar:BottomBar()
    );
  }

}