import 'package:flutter/material.dart';

import 'appbar/appbar.dart';

class HomeScreen extends StatelessWidget {
  final bool _showMenu = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: <Widget>[
          Appbar(showMenu: _showMenu),
        ],
      ),
    );
  }
}
