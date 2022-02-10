import 'package:flutter/material.dart';

import 'inicial.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Exemplo de Aplicação Flutter'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/inicial');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("item do menu"),
                ),
              ),
            ],
          ),
        ));
  }
}
