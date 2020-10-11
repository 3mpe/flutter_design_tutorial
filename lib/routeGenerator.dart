import 'package:flutter/material.dart';
import 'package:empty_template/Containers/HomePage/index.dart';

class RouteGenerator {
  // ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case "/":
      case "/HomePage":
        return MaterialPageRoute(builder: (_) => HomePage());

      default:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
