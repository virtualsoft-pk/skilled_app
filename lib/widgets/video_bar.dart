import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoBar extends StatefulWidget {
  const VideoBar({
    Key? key,
    required this.videoPath,
  }) : super(key: key);

  final String videoPath;

  @override
  _VideoBarState createState() => _VideoBarState();
}

class _VideoBarState extends State<VideoBar> {
  late final VideoPlayerController controller;

  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(
      widget.videoPath,
      videoPlayerOptions: VideoPlayerOptions(),
    )..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: controller.value.isInitialized
            ? Stack(
                children: [
                  VideoPlayer(controller),
                  Center(
                    child: GestureDetector(
                        onTap: () {
                          controller.value.isPlaying
                              ? controller.pause()
                              : controller.play();
                          setState(() {});
                        },
                        child: CircleAvatar(
                          radius: 28,
                          backgroundColor: controller.value.isPlaying
                              ? Colors.white24
                              : Colors.white,
                          child: Icon(
                            controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: Colors.black,
                          ),
                        )),
                  )
                ],
              )
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
