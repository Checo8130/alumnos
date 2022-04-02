import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class Conocenos extends StatefulWidget {
  Conocenos({Key? key}) : super(key: key);

  @override
  State<Conocenos> createState() => _ConocenosState();
}

class _ConocenosState extends State<Conocenos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Drawers(), //desprende el drawer en la page
      appBar: AppBar(
        title: Text("Conocenos"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
