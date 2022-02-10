import 'package:flutter/material.dart';
import 'package:teste1/menu.dart';

import 'imagens.dart';
import 'inicial.dart';
import 'splash.dart';

class Rotas extends StatelessWidget {
  const Rotas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/splash': (context) => Splash(),
        '/menu': (context) => Menu(),
        '/inicial': (context) => Inicial(),
        '/imagens': (context) => Imagens(),
      },
      initialRoute: "/splash",
    );
  }
}
