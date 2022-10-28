import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class LayoutLogPrint extends StatelessWidget{
  const LayoutLogPrint({super.key,required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(builder: (context,constraints){
      print('$constraints');
      return child;
    });
  }
}