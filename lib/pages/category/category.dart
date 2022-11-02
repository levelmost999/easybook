import 'package:easybook/component/bottomBar.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget{
  const Category({super.key});
  @override
  State<StatefulWidget> createState() {
    return CategoryState();
  }

}

class CategoryState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Text('分类'),
    ),
    bottomNavigationBar:BottomBar()
    );
  }

}