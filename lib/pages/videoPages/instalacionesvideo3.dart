import 'package:alumnos/widget/videoplayer.dart';
import 'package:flutter/material.dart';

class instalacionesvideo3 extends StatefulWidget {
  const instalacionesvideo3({Key? key}) : super(key: key);

  @override
  _instalacionesvideo3State createState() => _instalacionesvideo3State();
}

class _instalacionesvideo3State extends State<instalacionesvideo3> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: videplayer(
                url: 'https://www.ensenada.tecnm.mx/wp-content/uploads/2021/10/campoypistaipad.mp4',title:"Campo de futbol y pista de atletismo")
        )
    );
  }
}
