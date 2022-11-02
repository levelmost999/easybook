import 'package:easybook/component/bottomBar.dart';
import 'package:flutter/material.dart';

class Square extends StatefulWidget{
  const Square({super.key});
  @override
  State<StatefulWidget> createState() {
    return SquareState();
  }

}

class SquareState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Text('广场'),
    ),
    bottomNavigationBar:BottomBar()
    );
  }

}