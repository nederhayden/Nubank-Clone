import 'package:flutter/material.dart';

class Pageview extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.red,
      height: size.height * .5,
    );
  }
}