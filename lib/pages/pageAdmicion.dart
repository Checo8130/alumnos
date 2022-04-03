import 'package:flutter/material.dart';

class Admision extends StatefulWidget {
  Admision({Key? key}) : super(key: key);

  @override
  State<Admision> createState() => _AdmisionState();
}

class _AdmisionState extends State<Admision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Drawers(), //desprende el drawer en la page
      appBar: AppBar(
        title: Text("Proceso de admision"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 29, 58, 105),
      ),
    );
  }
}
