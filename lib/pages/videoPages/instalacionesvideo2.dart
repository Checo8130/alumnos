import 'package:alumnos/widget/videoplayer.dart';
import 'package:flutter/material.dart';

class instalacionesvideo2 extends StatefulWidget {
  const instalacionesvideo2({Key? key}) : super(key: key);

  @override
  _instalacionesvideo2State createState() => _instalacionesvideo2State();
}

class _instalacionesvideo2State extends State<instalacionesvideo2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: videplayer(
                url: 'https://www.ensenada.tecnm.mx/wp-content/uploads/2021/10/Recorrido-poligono-sur_2.mp4',title:"Poligono Sur")
        )
    );
  }
}
