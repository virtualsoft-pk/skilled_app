import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rounded_linear_progress/rounded_linear_progress.dart';
import 'package:skilled_app/views/quiz/quiz_Result_Page2.dart';

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
        title: Text(
          "Quiz Result",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: textColor),
              
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You are an \nInventor",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 9, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 1, color: Colors.grey.withOpacity(0.2)),
                          ),
                          child: Text(
                            "Find out more",
                            style: TextStyle(
                                fontSize: 14,
                                color: blueColor,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: Get.height * 0.23,
                      width: Get.width * 0.5,
                      child: Image.asset(
                        "assets/images/image1.png",
                        // height: Get.height * 0.24,
                      ),
                    ),
                  ],
                ),
                Text(
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
                  height: Get.height * 0.02,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: Get.width * 0.4,
                    height: Get.height * 0.043,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(18)),
                    child: Center(
                        child: Text(
                      "View your Answer",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    )),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(
                  AppConst.QUIZ_RESULT_PAGE_QUESTION,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  "Based on your test results, we recommend the following careers.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                buildTile(
                  "Astrophysicist",
                  "Category : Physics and Space",
                  85,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                buildTile(
                  "Environmental Scientist",
                  "Category : Science and Environment",
                  85,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                buildTile(
                  "UI/UX Designer",
                  "Category : Design and Computer Science",
                  85,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                buildTile(
                  "Software Engineer",
                  "Category : Tech and Computer Science",
                  85,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: Get.width * 0.4,
                    height: Get.height * 0.04,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(child: Text("View all")),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                InkWell(
                    onTap: () {
                      Get.to(QuizResultPage2());
                    },
                    child: CustomButton(text:"GET STARTED")),
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
      padding: EdgeInsets.symmetric(horizontal: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            type,
            style: TextStyle(color: progressType, fontSize: 12),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Row(
            children: [
              Text(
                '$progressPer%',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  child: LinearPercentIndicator(
                    // width: 100.0,
                    lineHeight: 7.0,
                    percent: value,
                    progressColor: progressColor,
                    barRadius: Radius.circular(20.0),
                    backgroundColor: greyColor,
                    addAutomaticKeepAlive: true,
                    animationDuration: 1000,
                    animation: true,

                  )
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildTile(String profession, String category, int per) {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                profession,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                category,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    "$per%",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: Get.width * 0.01,
                  ),
                  Text(
                    "match",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Text(
                "Find out more",
                style: TextStyle(
                    fontSize: 16,
                    color: blueColor,
                    fontWeight: FontWeight.w600),
              ),
              // Container(
              //   color: backgroundColor,
              //   padding: EdgeInsets.symmetric(vertical: 20),
              //   child: Text("Get Started"),
              // )
            ],
          ),
        ],
      ),
    );
  }
}
