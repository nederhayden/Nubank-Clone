import 'package:flutter/material.dart';

import 'appbar/appbar.dart';
import 'appbar/menu_appbar.dart';
import 'pages/pageview.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showMenu = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 500),
            child: Appbar(
              showMenu: _showMenu,
              onTap: () {
                setState(() {
                  _showMenu = !_showMenu;
                });
              },
            ),
          ),
          MenuAppbar(),
          Pageview(),
        ],
      ),
    );
  }
}
