import 'package:easybook/component/bottomBar.dart';
import 'package:flutter/material.dart';

class Mine extends StatefulWidget{
  const Mine({super.key});
  @override
  State<StatefulWidget> createState() {
    return MineState();
  }

}

class MineState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Text('我的'),
    ),
    bottomNavigationBar:BottomBar()
    );
  }

}