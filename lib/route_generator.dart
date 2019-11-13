import 'package:flutter/material.dart';
import 'features/presentation/pages/*.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
      case '/home':
        return MaterialPageRoute(
            builder: (_) => HomePage(title: 'Pebble Health'));
      case '/counter':
        return MaterialPageRoute(
            builder: (_) => CounterPage(title: 'Flutter Demo Page'));
      // if (args is ObjectName) {
      //   return MaterialPageRoute(builder: (_) => PageName(ParamName: args));
      // }
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
