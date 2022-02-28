import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rounded_linear_progress/rounded_linear_progress.dart';
import 'package:skilled_app/views/quiz/quiz_watch_video.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_const.dart';
import '../../widgets/custom_button.dart';

class QuizResultPage extends StatefulWidget {
  @override
  _QuizResultPageState createState() => _QuizResultPageState();
}

class _QuizResultPageState extends State<QuizResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Quiz Result",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: textColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "You are an \nInventor",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 1, color: Colors.grey.withOpacity(0.2)),
                          ),
                          child: const Text(
                            "Find out more",
                            style: TextStyle(
                                fontSize: 14,
                                color: blueColor,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
                        height: Get.height * 0.23,
                        // width: Get.width * 0.5,
                        child: Image.asset(
                          "assets/images/image1.png",
                          // height: Get.height * 0.24,
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Your Results",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                buildProgress("Building", 56, progressColor,
                    Colors.grey.withOpacity(0.04), 0.5),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                buildProgress("Thinking", 30, progressColor,
                    Colors.grey.withOpacity(0.04), 0.3),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                buildProgress("Creating", 20, progressColor,
                    Colors.grey.withOpacity(0.04), 0.2),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                buildProgress("Helping", 60, progressColor,
                    Colors.grey.withOpacity(0.04), 0.6),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                buildProgress("Persuading", 80, progressColor,
                    Colors.grey.withOpacity(0.04), 0.8),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                buildProgress("Organizing", 90, progressColor,
                    Colors.grey.withOpacity(0.04), 0.9),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: Get.width * 0.4,
                    height: Get.height * 0.053,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Colors.grey.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(18)),
                    child: const Center(
                        child: Text(
                      "View your Answer",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333943),
                          fontSize: 14),
                    )),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                const Text(
                  AppConst.QUIZ_RESULT_PAGE_QUESTION,
                  style: TextStyle(
                      color: grey800,
                      fontSize: 23,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: Get.height * 0.009,
                ),
                const Text(
                  "Based on your test results, we recommend the following careers.",
                  style: TextStyle(
                      color: grey700,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                buildTile(
                  "Astrophysicist",
                  "Category : Physics and Space",
                  85,
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey.withOpacity(0.2),
                ),
                buildTile(
                  "Environmental Scientist",
                  "Category : Science and Environment",
                  85,
                ),
                Divider(
                  thickness: 0.8,
                  color: Colors.grey.withOpacity(0.2),
                ),
                buildTile(
                  "UI/UX Designer",
                  "Category : Design and Computer Science",
                  85,
                ),
                Divider(
                  thickness: 0.8,
                  color: Colors.grey.withOpacity(0.2),
                ),
                buildTile(
                  "Software Engineer",
                  "Category : Tech and Computer Science",
                  85,
                ),
                Divider(
                  thickness: 0.8,
                  color: Colors.grey.withOpacity(0.2),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: Get.width * 0.4,
                    height: Get.height * 0.05,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Colors.grey.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(18)),
                    child: const Center(
                        child: Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: grey900),
                    )),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                CustomButton(
                  text: "GET STARTED",
                  funct: () {
                    Get.to(QuizWatchVideo());
                  },
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildProgress(String type, int progressPer, Color progressColor,
      Color background, double value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            type,
            style: const TextStyle(color: progressType, fontSize: 12),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Row(
            children: [
              Text(
                '$progressPer%',
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                    child: LinearPercentIndicator(
                  // width: 100.0,
                  lineHeight: 7.0,
                  percent: value,
                  progressColor: progressColor,
                  barRadius: const Radius.circular(20.0),
                  backgroundColor: greyColor,
                  addAutomaticKeepAlive: true,
                  animationDuration: 1000,
                  animation: true,
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildTile(String profession, String category, int per) {
    return Container(
      margin: EdgeInsets.only(bottom: Get.height * 0.02),
      child: Row(
        children: [
          Flexible(
            flex: 10,
            fit: FlexFit.tight,
            
            child: Container(
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profession,
                    style: const TextStyle(
                        color: grey900, fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    category,
                    style: const TextStyle(
                        color: grey600, fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          // const Spacer(),
          Flexible(
            flex: 5,
            fit: FlexFit.tight,
            child: Container(
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        "$per%",
                        style: const TextStyle(
                            color: grey900,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: Get.width * 0.01,
                      ),
                      const Text(
                        "match",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Find out more",
                    style: TextStyle(
                        fontSize: 16,
                        color: blueColor,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
