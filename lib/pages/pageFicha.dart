import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class Ficha extends StatefulWidget {
  Ficha({Key? key}) : super(key: key);

  @override
  State<Ficha> createState() => _FichaState();
}

class _FichaState extends State<Ficha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawers(), //desprende el drawer en la page
      appBar: AppBar(
        title: Text("Procedimiento de ficha"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
