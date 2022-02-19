import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/quiz/career_details.dart';

import '../../utils/app_const.dart';
import '../../widgets/custom_button.dart';

class QuizResultPage4 extends StatefulWidget {
  @override
  _QuizResultPage4State createState() => _QuizResultPage4State();
}

class _QuizResultPage4State extends State<QuizResultPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            padding: EdgeInsets.all(16),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: backButtonColor),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 15,
              ),
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          AppConst.QUIZ_RESULT_PAGE_4_TEXT,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: Get.height,
            //width: Get.width,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                RecommendedCareerTile("Question 1:",
                    AppConst.QUIZ_RESULT_PAGE_4_QUESTION_1, "Extrovert"),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                RecommendedCareerTile("Question 2:",
                    AppConst.QUIZ_RESULT_PAGE_4_QUESTION_2, "Painting"),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                RecommendedCareerTile("Question 3:",
                    AppConst.QUIZ_RESULT_PAGE_4_QUESTION_3, "Make excuse"),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                CustomButton(text:"Email me answer",funct: (){
                  Get.to(()=> Career());
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget RecommendedCareerTile(
      String questionNumber, String question, String answer) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
          border: Border.all(width: 0.1),
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            questionNumber,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Text(
            question,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Text(
            "Answer:",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Text(
            answer,
            style: TextStyle(
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
