import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/quiz/quiz_page.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_widgets.dart';

class QuizStart extends StatefulWidget {
  const QuizStart({Key? key}) : super(key: key);

  @override
  _QuizStartState createState() => _QuizStartState();
}

class _QuizStartState extends State<QuizStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: tabAppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: Responsive.isTablet(context) ? Get.width * 0.3 : 16),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 25, top: Get.height * 0.18),
                width: Responsive.isTablet(context)
                    ? Get.width * 0.3
                    : Get.width * 0.8,
                child: Image.asset('assets/images/quiz_start.jpg')),
            SizedBox(
              height: Get.height * 0.04,
            ),
            const Text(
              "Which career is right for me",
              style: TextStyle(
                  fontSize: 24,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              "Use this fun quiz  to help us to find the \nbest career for you.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            CustomButton(
              text: "START QUIZ",
              funct: () {
                context.navigator.push<void>(
                    SwipeablePageRoute(builder: (_) => const QuizPage()));
                // Get.to(() => QuizQuestions());
              },
            ),
            if (Responsive.isTablet(context))
              SizedBox(
                height: Get.height * 0.03,
              ),
          ],
        ),
      ),
    );
  }
}
