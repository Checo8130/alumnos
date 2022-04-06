import 'package:flutter/material.dart';

class Convovatoria extends StatefulWidget {
  const Convovatoria({Key? key}) : super(key: key);

  @override
  State<Convovatoria> createState() => _ConvovatoriaState();
}

class _ConvovatoriaState extends State<Convovatoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Drawers(), //desprende el drawer en la page
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 29, 58, 105),
        title: const Text("Convocatoria nuevo ingreso"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: [
          //Padding(padding: EdgeInsets.fromLTRB(70, 30, 40, 0)),
          const Text('Convocatoria nuevo ingreso agosto-diciembre 2022 \n',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center),

          const Text(
              'El Instituto Tecnológico de Ensenada del TecNM te invita a ser parte de esta comunidad tecnológica, te convoca a ingresar en alguno de nuestro programa educativo si \n'
              'a) Concluiste tu bachillerato,\n'
              'b) Cuentas con certificado de terminación de estudios\n'
              'c) Estas cursando el último semestre de bachillerato.\n'
              'Interesados en inscribirse en la institución que más ingenieros forme en Baja California y en México, 46 de cada 100 ingenieros se preparan en el Tecnológico Nacional de México.\n'
              '¡No lo pienses más se un Albatros, te esperamos!\n \n',
              style: TextStyle(
                fontSize: 15.0,
              )),
          Image.network(
            'https://www.ensenada.tecnm.mx/wp-content/uploads/2022/03/Convocatoria-2022-2.jpeg',
          ),
/*
            new Image.asset(
              'assets/images/convocatoria.png',

            ),*/
        ],
      ),
    );
  }
}
