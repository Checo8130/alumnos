import 'package:alumnos/pages/PageFicha.dart';
import 'package:alumnos/pages/pageBienvenido.dart';
import 'package:alumnos/pages/pageConvocatoria.dart';
import 'package:alumnos/pages/pageHorario.dart';
import 'package:alumnos/pages/pageInscripcion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/pageAdmicion.dart';
import '../pages/pageConocenos.dart';

class Drawers extends StatefulWidget {
  Drawers({Key? key}) : super(key: key);

  @override
  State<Drawers> createState() => _DrawersState();
}

//Construcion de Drawer
class _DrawersState extends State<Drawers> {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    const imagen =
        "https://itcampeche.edu.mx/wp-content/uploads/2022/01/Copia-de-INGENIER%C3%8DA-1-360x203.jpg";
    return Drawer(
      child: Material(
        color: const Color.fromARGB(255, 29, 58, 105),
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 48),
            Image.network(imagen),
            const SizedBox(height: 4),
            buildMenu(
              text: "Opciones",
              icon: Icons.settings,
            ),
            const SizedBox(height: 4),
            const Divider(color: Colors.white70),
            const SizedBox(height: 48),
            buildMenu(
              text: "Conocenos",
              icon: Icons.engineering,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 48),
            buildMenu(
              text: "Convocatoria nuevo ingreso",
              icon: Icons.note_alt,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 48),
            buildMenu(
              text: "Proceso de admición",
              icon: Icons.app_registration,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 48),
            buildMenu(
              text: "Procedimiento para tramitar ficha de nuevo ingreso",
              icon: Icons.book_outlined,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 48),
            buildMenu(
              text: "Horario de curso para aspirantes Nuevo ingreso",
              icon: Icons.calendar_today,
              onClicked: () => selectedItem(context, 4),
            ),
            const SizedBox(height: 48),
            buildMenu(
              text: "Procedimiento de inscripción",
              icon: Icons.app_registration,
              onClicked: () => selectedItem(context, 5),
            ),
            const SizedBox(height: 48),
            buildMenu(
              text: "Bienvenido albatro",
              icon: Icons.person,
              onClicked: () => selectedItem(context, 6),
            ),
          ],
        ),
      ),
    );
  }

//Estilo y propiedades de Drawer
  Widget buildMenu({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.white;
    const LetraDrawer = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: LetraDrawer,
      onTap: onClicked,
    );
  }

//direcciones de pages
  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop(); //oculta drawer
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Conocenos(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Convovatoria(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Admision(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Ficha(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Horario(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Inscripcion(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Bienvenidos(),
        ));
        break;
    }
  }
}
