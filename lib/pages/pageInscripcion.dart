import 'package:flutter/material.dart';

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
      title: const Text("Procedimiento de inscrición"),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 29, 58, 105,),
    ));
  }
}
