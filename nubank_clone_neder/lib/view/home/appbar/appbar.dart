import 'package:flutter/material.dart';
import 'package:nubank_clone_neder/components/text.dart';


class Appbar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  const Appbar({Key key, this.showMenu, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/nubank-logo-branca.png',
                scale: size.height * .13,
              ),
              SizedBox(width: 10),
              TextCustom(
                text: 'Neder',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(height: 10),
          Icon(!showMenu ? Icons.expand_more : Icons.expand_less),
        ],
      ),
    );
  }
}
