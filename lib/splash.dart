import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addListener(() {
        setState(() {
          // The state that has changed here is
          // the animation object’s value.
        });
      });
    controller.forward();

    // Temporizador para carregamento da página de Menu
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, "/menu");
    });
  }

  @override
  Widget build(BuildContext context) {
    var tamanhoDaTela = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: animation.value, // tamanhoDaTela.width * 0.5,
          height: animation.value, // tamanhoDaTela.height * 0.5,
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 16,
              borderOnForeground: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(64.0),
              ),
              child: Image.asset(
                'lib/assets/imagens/iwantyou.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
