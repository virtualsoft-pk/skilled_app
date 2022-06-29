import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/quiz/quiz_start.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: tabAppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: Responsive.isTablet(context) ? Get.width * 0.3 : 16),
        child: Column(
          mainAxisAlignment: Responsive.isTablet(context)
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
          crossAxisAlignment: Responsive.isTablet(context)
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: Responsive.isTablet(context)
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'How it works',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: Get.height * 0.008,
                  ),
                  Text(
                    'Watch the short video below,\nbefore getting started, to learn about Skilld.',
                    textAlign:
                        Responsive.isTablet(context) ? TextAlign.center : null,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.045,
            ),
            SizedBox(
              width: double.infinity,
              height: Get.height * 0.38,
              child: Stack(
                children: [
                  Image(
                    image: const AssetImage('assets/userdemo.png'),
                    fit: BoxFit.fill,
                    width: Get.width,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: Get.height * 0.07,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: const Center(child: Icon(Icons.play_arrow)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Watch More Videos',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
              ),
            ),
            if (Responsive.isMobile(context)) const Spacer(),
            if (Responsive.isTablet(context))
              SizedBox(height: Get.height * 0.035),
            MaterialButton(
                onPressed: () {
                  context.navigator.push<void>(
                      SwipeablePageRoute(builder: (_) => QuizStart()));
                  // Get.to(() => QuizStart());
                },
                minWidth: double.infinity,
                height: 62,
                color: const Color(0xffFBC799),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'GET STARTED',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                )),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
