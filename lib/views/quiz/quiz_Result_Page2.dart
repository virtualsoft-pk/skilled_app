import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/quiz/quiz_Result_page3.dart';
import 'package:skilled_app/widgets/custom_button.dart';

import '../../utils/app_const.dart';
import '../../widgets/hamid.dart';

class QuizResultPage2 extends StatefulWidget {
  @override
  _QuizResultPage2State createState() => _QuizResultPage2State();
}

class _QuizResultPage2State extends State<QuizResultPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            customAppBar(AppConst.QUIZ_RESULT_PAGE_2_TEXT),
            Container(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.07),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: Get.height * 0.24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/image2.png",
                          ),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: Get.height * 0.07,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Center(child: Icon(Icons.play_arrow)),
                        ),
                      ),
                    ),
                    Text(
                      "You are an Inventor",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    buildQuestions(
                      AppConst.QUIZ_RESULT_PAGE_2_QUESTION_1,
                    ),
                    SizedBox(
                      height: Get.height * 0.014,
                    ),
                    buildOpints("Realistic"),
                    SizedBox(
                      height: Get.height * 0.014,
                    ),
                    buildOpints("Sensible"),
                    SizedBox(
                      height: Get.height * 0.014,
                    ),
                    buildOpints("Mechanical"),
                    SizedBox(
                      height: Get.height * 0.014,
                    ),
                    buildOpints("Traditional"),
                    SizedBox(
                      height: Get.height * 0.014,
                    ),
                    buildOpints("Down-to-earth"),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    buildQuestions(
                      AppConst.QUIZ_RESULT_PAGE_2_QUESTION_2,
                    ),
                    SizedBox(
                      height: Get.height * 0.014,
                    ),
                    buildOpints("Practicality"),
                    SizedBox(
                      height: Get.height * 0.014,
                    ),
                    buildOpints("Productivity"),
                    SizedBox(
                      height: Get.height * 0.014,
                    ),
                    buildOpints("Structure"),
                    SizedBox(
                      height: Get.height * 0.014,
                    ),
                    buildOpints("Independence"),
                    SizedBox(
                      height: Get.height * 0.014,
                    ),
                    buildOpints("Physical Skill"),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(QuizResultPage3());
                        },
                        child: CustomButton(text:"Go to career list")),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Row buildQuestions(String question) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: buttonColor,
          radius: 5,
        ),
        SizedBox(
          width: Get.width * 0.03,
        ),
        Text(
          question,
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Container buildOpints(String points) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 3,
            backgroundColor: Colors.black,
          ),
          SizedBox(
            width: Get.width * 0.03,
          ),
          Text(
            points,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
