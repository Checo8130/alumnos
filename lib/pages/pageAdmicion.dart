import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

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
          const Text(
              'Proceso y guía para el examen de admisión(Evaluación diagnóstica) \n',
              style: TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              )),

          const Text(
              '1) Para realizar su examen (evaluación diagnóstica) debe de utilizar su correo Institucional. Lista de correos Institucionales(GMAIL), la contraseña para todos es ENSENADA. \n\n'
              'Activar su correo institucional \n',
              style: TextStyle(
                fontSize: 15.0,
              ),
              textAlign: TextAlign.justify),
          Container(
            color: Colors.black,
            child: const Text(
              "Lista de correos istitucionales de apirantes 2022-2 ",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            color: Colors.black,
            height: 400,
            child: PdfViewer.openAsset('assets/Correo.pdf'),
          ),
          const Text(
              '\n\nSi su nombre no es el correcto favor de enviar WhatsApp al número 646 272 83 00. \n\n'
              'Para los aspirantes que saquen ficha después de este corte, la siguiente lista se publicara el 08 de abril 2022. \n\n'
              '2) Para realizar tú examen (evaluación diagnóstica) tiene dos modalidades, presencial o en línea, a continuación, se presenta liga de cuestionario para que selecciones la modalidad, es necesario llenarlo con tu correo institucional.'
              'Selección de modalidad:  https://forms.gle/rddsqb7MkdSLS7k2A \n\n'
              '3) Examen diagnóstico \n\n'
              'a) Liga: \n'
              'http://svo-3-101.servidoresvirtuales.mx/moodle/login/index.php \n'
              'b) En línea estará abierto del 01 de abril al 19 de junio. \n'
              'c) Guía para realizar examen.\n\n'
              'Exámenes presenciales viernes 29 de abril.\n\n'
              '■ 8:00 a 12:00 horas\n'
              '■ 12:00 a 16:00 horas\n'
              '■ 18:00 a 20:00 horas\n\n\n'
              '4) Publicación de resultados en la página\n\n'
              'Dependiendo de cuando realice su examen la fecha más próxima de las fechas publicadas saldrá su resultado. \n\n'
              '■ Lunes 11 de abril\n'
              '■ Lunes 25 de abril\n'
              '■ Lunes 9 de mayo\n'
              '■ Lunes 23 de mayo\n'
              '■ Lunes 06 de junio\n'
              '■ Lunes 20 de junio\n\n'
              'Procedimiento para presentar examen de admisión\n\n',
              style: TextStyle(
                fontSize: 15.0,
              ),
              textAlign: TextAlign.justify),

          Container(
            color: Colors.black,
            child: const Text(
              "Guía para presentar examen de admisión de apirantes 2022-2",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            color: Colors.black,
            height: 300,
            child: PdfViewer.openAsset('assets/Presentar.pdf'),
          ),
        ],
      ),
    );
  }
}
