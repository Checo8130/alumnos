import 'package:alumnos/widget/drawer.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

//Esta es la pagina principal
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawers(),
      appBar: AppBar(
        title: const Text("Bienvenidos"),
        backgroundColor: const Color.fromARGB(255, 29, 58, 105),
      ),
      body: const Center(
          child: Text(
        "¡Bienvenidos Aspirantes!",
        style: TextStyle(fontSize: 27.0),
      )),
    );
  }
}
