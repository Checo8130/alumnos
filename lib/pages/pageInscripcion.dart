import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class Inscripcion extends StatefulWidget {
  const Inscripcion({Key? key}) : super(key: key);

  @override
  State<Inscripcion> createState() => _InscripcionState();
}

class _InscripcionState extends State<Inscripcion> {
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF24264C);

    return Scaffold(
        //drawer: Drawers(),//desprende el drawer en la page
        appBar: AppBar(
          title: const Text("Proceso de admisión"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(
            255,
            29,
            58,
            105,
          ),
        ),
        body: PdfViewer.openAsset('assets/Horario.pdf'));
  }
}
