import 'package:alumnos/widget/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alumnos/widget/drawer.dart';

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
        backgroundColor: Color.fromARGB(255, 5, 31, 164),
      ),
    );
  }
}
