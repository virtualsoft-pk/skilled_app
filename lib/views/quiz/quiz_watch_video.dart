import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/quiz/all_careers.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../utils/app_const.dart';
import '../../widgets/custom_widgets.dart';

class QuizWatchVideo extends StatefulWidget {
  const QuizWatchVideo({Key? key}) : super(key: key);

  @override
  _QuizWatchVideoState createState() => _QuizWatchVideoState();
}

class _QuizWatchVideoState extends State<QuizWatchVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: customBackButton(() {}),
                    ),
                    const Expanded(
                      flex: 5,
                      child: Text(
                        'Watch the video below to find out more',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 2),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/image2.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: Get.height * 0.07,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child:
                                    const Center(child: Icon(Icons.play_arrow)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "You are an Inventor",
                        style: TextStyle(
                            color: grey900,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      buildQuestions(
                        AppConst.QUIZ_RESULT_PAGE_2_QUESTION_1,
                      ),
                      SizedBox(
                        height: Get.height * 0.018,
                      ),
                      buildOpints("Realistic"),
                      SizedBox(
                        height: Get.height * 0.008,
                      ),
                      buildOpints("Sensible"),
                      SizedBox(
                        height: Get.height * 0.008,
                      ),
                      buildOpints("Mechanical"),
                      SizedBox(
                        height: Get.height * 0.008,
                      ),
                      buildOpints("Traditional"),
                      SizedBox(
                        height: Get.height * 0.008,
                      ),
                      buildOpints("Down-to-earth"),
                      SizedBox(
                        height: Get.height * 0.018,
                      ),
                      buildQuestions(
                        AppConst.QUIZ_RESULT_PAGE_2_QUESTION_2,
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      buildOpints("Practicality"),
                      SizedBox(
                        height: Get.height * 0.008,
                      ),
                      buildOpints("Productivity"),
                      SizedBox(
                        height: Get.height * 0.008,
                      ),
                      buildOpints("Structure"),
                      SizedBox(
                        height: Get.height * 0.008,
                      ),
                      buildOpints("Independence"),
                      SizedBox(
                        height: Get.height * 0.008,
                      ),
                      buildOpints("Physical Skill"),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  text: "GO TO CAREERS LIST",
                  funct: () {
                    context.navigator.push<void>(
                      SwipeablePageRoute(
                        builder: (_) => AllCareers(),
                      ),
                    );
                    // Get.to(AllCareers());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildQuestions(String question) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: buttonColor,
          radius: 5,
        ),
        SizedBox(
          width: Get.width * 0.03,
        ),
        Text(
          question,
          style: const TextStyle(
              color: grey900, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }

  Container buildOpints(String points) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 2,
            backgroundColor: Colors.black,
          ),
          SizedBox(
            width: Get.width * 0.03,
          ),
          Text(
            points,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
