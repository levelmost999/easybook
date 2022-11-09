import 'package:easybook/component/bottomBar.dart';
import 'package:easybook/component/topBar.dart';
import 'package:flutter/material.dart';

class Bookrack extends StatefulWidget {
  const Bookrack({super.key});
  @override
  State<StatefulWidget> createState() {
    return BookrackState();
  }
}

class BookrackState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
        body: DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Text('书架'),
    ),
    bottomNavigationBar:BottomBar()
    );
  }
}
