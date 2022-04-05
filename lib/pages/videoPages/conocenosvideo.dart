import 'package:alumnos/widget/videoplayer.dart';
import 'package:flutter/material.dart';

class conocenosvideo extends StatefulWidget {
  const conocenosvideo({Key? key}) : super(key: key);

  @override
  _conocenosvideoState createState() => _conocenosvideoState();
}

class _conocenosvideoState extends State<conocenosvideo> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body:  Center(
            child: videplayer(
                url: 'https://www.ensenada.tecnm.mx/wp-content/uploads/2021/10/video-promo-ite-renovado-2021.mp4')
        )
    );
  }
  }

