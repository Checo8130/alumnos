import 'package:flutter/material.dart';

class Inscripcion extends StatefulWidget {
  Inscripcion({Key? key}) : super(key: key);

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
      backgroundColor: const Color.fromARGB(255, 29, 58, 105,),
    ),
    body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),

          children: [
            //Padding(padding: EdgeInsets.fromLTRB(70, 30, 40, 0)),
            Text('Proceso de admisión \n',style:TextStyle(
              fontSize: 35.0,fontWeight: FontWeight.bold,) ),

            Text('Sistema Integral Escolar  (SIE) ingresar en el siguiente enlace👇👇\n',

    style:TextStyle(
              fontSize: 15.0,)),
            CupertinoButton(child: Text('http://escolares.ensenada.tecnm.mx'), onPressed: () {
              launch("http://escolares.ensenada.tecnm.mx");
            }),
            new Image.network(
              'https://www.ensenada.tecnm.mx/wp-content/uploads/2022/03/Proceso-de-admision-2022-2.jpeg',
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
