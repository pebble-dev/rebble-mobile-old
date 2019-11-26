import 'package:flutter/material.dart';

class AppBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.av_timer), title: Text('Watchfaces')),
        BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text('Apps')),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), title: Text('Notifications')),
        BottomNavigationBarItem(
            icon: Icon(Icons.directions_run), title: Text('Health')),
      ],
      backgroundColor: Theme.of(context).primaryColor,
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      iconSize: 20,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      fixedColor: Theme.of(context).accentColor,
      onTap: (int idx) {
        switch (idx) {
          case 0:
            Navigator.pushNamed(context, '/counter');
            break;
          case 1:
            Navigator.pushNamed(context, '/watchfaces');
            break;
          case 2:
            Navigator.pushNamed(context, '/apps');
            break;
          case 3:
            Navigator.pushNamed(context, '/notifications');
            break;
        }
      },
    );
  }
}
