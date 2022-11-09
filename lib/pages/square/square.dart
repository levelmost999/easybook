import 'package:easybook/component/bottomBar.dart';
import 'package:flutter/material.dart';

import '../../component/topBar.dart';

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
      appBar: TopBar(),
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