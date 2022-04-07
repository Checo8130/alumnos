import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class videplayer extends StatefulWidget {
  final String url;
  final String title;
  const videplayer({Key? key, required this.url, required this.title})
      : super(key: key);

  @override
  _videplayerState createState() => _videplayerState();
}

class _videplayerState extends State<videplayer> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: Drawers(), //desprende el drawer en la page
      appBar: AppBar(
        title: const Text("Conocenos"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 29, 58, 105),
      ),
      body: Center(
          child: Column(children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            widget.title,
            style: const TextStyle(
                fontSize: 32, color: Color.fromARGB(255, 29, 58, 105)),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
