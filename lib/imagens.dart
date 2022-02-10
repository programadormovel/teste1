import 'package:flutter/material.dart';

class Imagens extends StatefulWidget {
  const Imagens({Key? key}) : super(key: key);

  @override
  _ImagensState createState() => _ImagensState();
}

class _ImagensState extends State<Imagens> {
  @override
  Widget build(BuildContext context) {
    var texto = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * .9,
        height: MediaQuery.of(context).size.height * .9,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Divider(),
            Positioned(
              child: Text(texto),
              top: 150,
            ),
            Positioned(
              top: 100,
              child: Card(
                child: Icon(Icons.access_alarm),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
