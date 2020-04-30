import 'package:flutter/material.dart';

import 'view/home/home_screen.dart';
import 'view/splash/splashscreen.dart';

void main() => runApp(Nubank());

class Nubank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Nubank Clone',
        // remover faixa de debug
        debugShowCheckedModeBanner: false,
        // definir tema padrao
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.purple[600],
        ),
        initialRoute: '/home',
        routes: {
          '/': (context) => SplashScreen(),
          '/home': (context) => HomeScreen(),
        });
  }
}
