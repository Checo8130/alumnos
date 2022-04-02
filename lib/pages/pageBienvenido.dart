import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class Bienvenidos extends StatefulWidget {
  Bienvenidos({Key? key}) : super(key: key);

  @override
  State<Bienvenidos> createState() => _BienvenidosState();
}

class _BienvenidosState extends State<Bienvenidos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Drawers(), //desprende el drawer en la page
      appBar: AppBar(
        title: Text("Bienvenido aspirante"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
