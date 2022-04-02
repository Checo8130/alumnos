import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class Convovatoria extends StatefulWidget {
  Convovatoria({Key? key}) : super(key: key);

  @override
  State<Convovatoria> createState() => _ConvovatoriaState();
}

class _ConvovatoriaState extends State<Convovatoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Drawers(), //desprende el drawer en la page
      appBar: AppBar(
        title: Text("Convocatoria nuevo ingreso"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
