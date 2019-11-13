import 'package:flutter/material.dart';
import 'route_generator.dart';
import 'features/presentation/themes/theme_factory.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Routing
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,

      // Theme
      theme: ThemeFactory.main,
    );
  }
}
