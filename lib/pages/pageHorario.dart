import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

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
        title: const Text("Horario de curso nuevo ingreso"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 29, 58, 105),
      ),
      body:  PdfViewer.openAsset(
      'assets/Horario.pdf')
    );
  }
}
