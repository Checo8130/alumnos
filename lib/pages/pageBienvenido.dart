import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

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
        title: const Text("Bienvenido aspirante"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 29, 58, 105),
      ),
      body: PdfViewer.openAsset('assets/Horario.pdf'),
    );
  }
}
