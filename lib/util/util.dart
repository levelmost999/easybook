import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class LayoutLogPrint extends StatelessWidget {
  const LayoutLogPrint({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(builder: (context, constraints) {
      print('$constraints');
      return child;
    });
  }
}

Future<String> getLocalCache(cache) async {
  String dir = (await getApplicationDocumentsDirectory()).path;
  File cacheFile = File('$dir/$cache');
  try {
    String fileResult = await cacheFile.readAsString();
    return fileResult;
  } catch (e) {
    return '';
  }
}

void writeLocalCache(cache, value) async {
  String dir = (await getApplicationDocumentsDirectory()).path;
  File cacheFile = File('$dir/$cache');
  cacheFile.writeAsString(value);
}

void deleteLocalCache(cache) async {
  String dir = (await getApplicationDocumentsDirectory()).path;
  File cacheFile = File('$dir/$cache');
  if (await cacheFile.exists()) {
    cacheFile.delete();
  }
}
