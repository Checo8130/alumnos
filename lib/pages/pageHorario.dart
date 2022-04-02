import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class Horario extends StatefulWidget {
  Horario({Key? key}) : super(key: key);

  @override
  State<Horario> createState() => _HorarioState();
}

class _HorarioState extends State<Horario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawers(),//desprende el drawer en la page
      appBar: AppBar(
        title: Text("Horario de curso nuevo ingreso"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
