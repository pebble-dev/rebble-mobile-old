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
          child: StepsWidget(),
        ));
  }
}

class StepsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.directions_run),
                Text("Activity"),
                ButtonBar(
                  children: <Widget>[
                    IconButton(
                      iconSize: 25,
                      icon: Icon(Icons.looks_one),
                      onPressed: () => print("Icon pressed..."),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(),
          Row(),
          Row(),
        ],
      ),
      color: Theme.of(context).cardColor,
      width: 300,
      height: 300,
      //constraints: BoxConstraints(minWidth: 5, maxWidth: 200),
    );
  }
}
