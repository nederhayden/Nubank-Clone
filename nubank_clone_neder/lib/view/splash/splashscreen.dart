import 'package:flutter/material.dart';
import 'package:nubank_clone_neder/components/buttons.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          color: Theme.of(context).primaryColor,
        ),
        Image.asset(
          'images/nubank-logo-branca.png',
          scale: size.height * .07,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 580, left: 20, right: 20),
          child: Row(
            children: <Widget>[
              Expanded(
                child: ButtonOutline(
                  text: 'SAIR DO APP',
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: ButtonOutline(
                  text: 'AUTENTICAR',
                  onPressed: () => Navigator.pushNamed(context, '/home'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
