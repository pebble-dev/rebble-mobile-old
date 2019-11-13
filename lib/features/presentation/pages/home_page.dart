import 'package:flutter/material.dart';
import 'package:rebble_mobile/features/presentation/widgets/*.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      bottomNavigationBar: AppBottomNav(),
      body: Center(
          child: Column(
        children: <Widget>[Text("Let's Rebble")],
      )),
    );
  }
}
