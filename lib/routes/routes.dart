import 'package:flutter/material.dart';
import '../pages/category/category.dart';
import '../pages/protocolorprivacy.dart';
import '../pages/bookrack/bookrack.dart';
import '../pages/mine/mine.dart';
import '../pages/shop/shop.dart';
import '../pages/square/square.dart';

final RegistRoutes = {
  '/bookrack': (context) => Bookrack(),
  '/mine': (context) => Mine(),
  '/square': (context) => Square(),
  '/category': (context) => Category(),
  '/shop': (context) => Shop(),
};
final routes = {
  '/prorocol': (context) => Protocol(),
  '/privacy': (context) => Privacy(),
  '/slideshow': (context) => GuidePage(),
};
Function onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name!;
  final Function pageContentBuilder = routes[name] as Function;
  print(pageContentBuilder);
  print(name);
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};


