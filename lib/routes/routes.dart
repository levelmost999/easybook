import 'package:flutter/material.dart';
import '../pages/protocolorprivacy.dart';
import '../pages/bookrack.dart';

final routes = {
  '/prorocol': (context) => Protocol(),
  '/privacy': (context) => Privacy(),
  '/slideshow': (context) => GuidePage(),
  '/bookrack': (context) => Bookrack(),
  };
Function onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name!;
  final Function pageContentBuilder = routes[name] as Function;
  print(pageContentBuilder);
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
