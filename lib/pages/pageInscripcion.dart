import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class Inscripcion extends StatefulWidget {
  Inscripcion({Key? key}) : super(key: key);

  @override
  State<Inscripcion> createState() => _InscripcionState();
}

class _InscripcionState extends State<Inscripcion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Drawers(),//desprende el drawer en la page
      appBar: AppBar(
        title: Text("Procedimiento de inscrición"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
