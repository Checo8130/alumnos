import 'package:alumnos/widget/videoplayer.dart';
import 'package:flutter/material.dart';

class instalacionesvideo1 extends StatefulWidget {
  const instalacionesvideo1({Key? key}) : super(key: key);

  @override
  _instalacionesvideo1State createState() => _instalacionesvideo1State();
}

class _instalacionesvideo1State extends State<instalacionesvideo1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: videplayer(
                url: 'https://www.ensenada.tecnm.mx/wp-content/uploads/2021/10/Recorridopoligono-norte2.mp4',title:"Poligono Norte")
        )
    );
  }
}
