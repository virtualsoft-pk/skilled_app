import 'package:flutter/material.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:video_player/video_player.dart';

class VideoBar extends StatefulWidget {
  const VideoBar({
    required this.videoUrl,
    Key? key,
  }) : super(key: key);

  final String videoUrl;

  @override
  _VideoBarState createState() => _VideoBarState();
}

class _VideoBarState extends State<VideoBar> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      widget.videoUrl,
      videoPlayerOptions: VideoPlayerOptions(),
    )..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: Container(color: greyColor, child: VideoPlayer(_controller)));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
