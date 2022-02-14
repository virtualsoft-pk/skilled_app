import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/quiz/quiz_start.dart';
import 'package:video_player/video_player.dart';

import '../../widgets/evolvated_button.dart';
import '../quiz/quiz_questions.dart';

class QuizStartView extends StatefulWidget {
  const QuizStartView({Key? key}) : super(key: key);

  @override
  State<QuizStartView> createState() => _QuizStartViewState();
}

class _QuizStartViewState extends State<QuizStartView> {
  // VideoPlayerController? controller;
  // Future<void>? _initializeVideoPlayerFuture;
  // @override
  // void initState() {
  //   super.initState();
  //   controller = VideoPlayerController.asset(
  //       'WhatsApp Video 2022-02-12 at 5.30.59 PM.mp4');
  //   _initializeVideoPlayerFuture = controller!.initialize();
  //   controller!.setLooping(true);
  // }
  // @override
  // void dispose() {
  //   super.dispose();
  //   controller!.dispose();
  // }
  bool isSkip = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: double.infinity,
          height: Get.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/unsplash_wD1LRb9OeEo.png'),
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/Group 12538.png',
                  height: 60,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: isSkip == true
                    ? Container(
                        alignment: Alignment.bottomRight,
                        padding: EdgeInsets.only(bottom: 30, right: 43),
                        child: TextButton(
                            onPressed: () {
                              isSkip = false;
                              setState(() {});
                            },
                            child: Text(
                              'skip',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff494F58),
                              ),
                            )),
                      )
                    : ElevattedButtonView(
                        text: 'NEXT',
                        funct: (){
                          Get.to(()=> QuizStart());
                        },
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class VideoPlayerWidget extends StatelessWidget {
//   VideoPlayerWidget({
//     Key? key,
//     this.controller,
//   }) : super(key: key);
//   VideoPlayerController? controller;
//   @override
//   Widget build(BuildContext context) {
//     return controller != null && controller!.value.isInitialized
//         ? Container(
//             alignment: Alignment.center,
//             child: buildVideo(),
//           )
//         : Container(
//             height: 200,
//             width: 200,
//             child: const CircularProgressIndicator(),
//           );
//   }
//   Widget buildVideo() => buildVideoPlayer();
//   Widget buildVideoPlayer() => VideoPlayer(controller!);
// }
