import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';

class Admision extends StatefulWidget {
  const Admision({Key? key}) : super(key: key);

  @override
  State<Admision> createState() => _AdmisionState();
}

class _AdmisionState extends State<Admision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Drawers(), //desprende el drawer en la page
      appBar: AppBar(
        title: const Text("Proceso de admisión"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 29, 58, 105),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: [
          //Padding(padding: EdgeInsets.fromLTRB(70, 30, 40, 0)),
          const Text('Proceso de admisión \n',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center),
          const Text(
              'Sistema Integral Escolar  (SIE) ingresar en el siguiente enlace👇👇\n',
              style: TextStyle(
                fontSize: 15.0,
              )),
          CupertinoButton(
              child: const Text('http://escolares.ensenada.tecnm.mx\n'),
              onPressed: () {
                launch('http://escolares.ensenada.tecnm.mx');
              }),
          SizedBox(
            height: 450,
            child: SfPdfViewer.asset('assets/inscripcion.pdf'),
          ),
        ],
      ),
    );
  }
}
