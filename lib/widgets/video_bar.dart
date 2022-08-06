import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  late ChewieController _chewieController;
  final double _aspectRatio = 16 / 9;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(
      widget.videoPath,
    );
    controller.initialize().then((value) {
      _chewieController = ChewieController(
        allowedScreenSleep: false,
        allowFullScreen: true,
        deviceOrientationsAfterFullScreen: [
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ],
        videoPlayerController: controller,
        aspectRatio: _aspectRatio,
        autoInitialize: true,
        autoPlay: false,
        showControls: true,
      );
      setState(() {});
    });

    // _chewieController.addListener(() {
    //   if (_chewieController.isFullScreen) {
    //     SystemChrome.setPreferredOrientations([
    //       DeviceOrientation.landscapeRight,
    //       DeviceOrientation.landscapeLeft,
    //     ]);
    //   } else {
    //     SystemChrome.setPreferredOrientations([
    //       DeviceOrientation.portraitUp,
    //       DeviceOrientation.portraitDown,
    //     ]);
    //   }
    // });
  }

  @override
  void dispose() {
    controller.dispose();
    _chewieController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: controller.value.isInitialized
            ? Chewie(controller: _chewieController)
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   controller.dispose();
  // }
}
