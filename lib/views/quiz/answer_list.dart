import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/quiz/career_details.dart';
import 'package:skilled_app/views/quiz/career_details.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

import '../../utils/app_const.dart';
import '../../widgets/custom_button.dart';

class AnswerList extends StatefulWidget {
  @override
  _AnswerListState createState() => _AnswerListState();
}

class _AnswerListState extends State<AnswerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Container(
      //     height: 40,
      //     width: 40,
      //     child: customBackButton()),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   title: Text(
      //     AppConst.QUIZ_RESULT_PAGE_4_TEXT,
      //     style: TextStyle(
      //         fontSize: 18, fontWeight: FontWeight.w700, color: greyDarkColor),
      //   ),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Container(
          height: Get.height,
          //width: Get.width,
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: customBackButton(),
                    ),
                    SizedBox(width: Get.width * 0.2),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text(
                        "Answer List",
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: greyDarkColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                  flex: 13,
                  fit: FlexFit.tight,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        RecommendedCareerTile(
                            "Question 1:",
                            AppConst.QUIZ_RESULT_PAGE_4_QUESTION_1,
                            "Extrovert"),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        RecommendedCareerTile("Question 2:",
                            AppConst.QUIZ_RESULT_PAGE_4_QUESTION_2, "Painting"),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        RecommendedCareerTile(
                            "Question 3:",
                            AppConst.QUIZ_RESULT_PAGE_4_QUESTION_3,
                            "Make excuse"),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        RecommendedCareerTile(
                            "Question 3:",
                            AppConst.QUIZ_RESULT_PAGE_4_QUESTION_3,
                            "Make excuse"),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: 10),

              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Container(
                  height: 50,
                  child: CustomButton(text : "EMAIL ME ANSWERS" , funct: (){
                    Get.to(()=> Career());
                  },),
                ),
                // child: Container(
                
                //   child: CustomButton(
                //       text: "EMAIL ME ANSWERS",
                //       funct: () {
                //         Get.to(() => Career());
                //       }),
                // ),
              ),

              //
            ],
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
          border: Border.all(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            questionNumber,
            style: TextStyle(
                fontSize: 14, color: grey600, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: Get.height * 0.008,
          ),
          Text(
            question,
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w600, color: grey800),
          ),
          SizedBox(
            height: Get.height * 0.010,
          ),
          Text(
            "Answer:",
            style: TextStyle(
                fontSize: 14, color: grey600, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: Get.height * 0.008,
          ),
          Text(
            answer,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: grey900),
          )
        ],
      ),
    );
  }
}
