import 'package:alumnos/pages/videoPages/conocenosvideo.dart';
import 'package:alumnos/pages/videoPages/instalacionesvideo1.dart';
import 'package:alumnos/pages/videoPages/instalacionesvideo2.dart';
import 'package:alumnos/pages/videoPages/instalacionesvideo3.dart';
import 'package:flutter/material.dart';

class Conocenos extends StatefulWidget {
  Conocenos({Key? key}) : super(key: key);

  @override
  State<Conocenos> createState() => _ConocenosState();
}

class _ConocenosState extends State<Conocenos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Conócenos"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 29, 58, 105),
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Conócenos",
                style: TextStyle(
                    fontSize: 32, color: Color.fromARGB(255, 29, 58, 105)),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 29, 58, 105),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const conocenosvideo(),
                    ));
                  },
                  child: const Text("Video 'Conócenos'")),
            ),
            const SizedBox(
              height: 50,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Instalaciones",
                style: TextStyle(
                    fontSize: 32, color: Color.fromARGB(255, 29, 58, 105)),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 29, 58, 105),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const instalacionesvideo1(),
                    ));
                  },
                  child: const Text("Video 'Poligono Norte'")),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 29, 58, 105),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const instalacionesvideo2(),
                    ));
                  },
                  child: const Text("Video 'Poligono Sur'")),
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 29, 58, 105),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const instalacionesvideo3(),
                      ));
                    },
                    child: const Text(
                        "Video 'Campo de futbol y pista de atletismo'"))),
          ],
        )));
  }
}
