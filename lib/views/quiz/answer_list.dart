import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

import '../../utils/app_const.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_dialogs.dart';

class AnswerList extends StatefulWidget {
  const AnswerList({Key? key}) : super(key: key);

  @override
  _AnswerListState createState() => _AnswerListState();
}

class _AnswerListState extends State<AnswerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: Get.height,
          //width: Get.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    customBackButton(() {}),
                    const Text(
                      "Answer List",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: greyDarkColor,
                      ),
                    ),
                    const CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.transparent,
                    )
                  ],
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.72,
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
                          RecommendedCareerTile(
                              "Question 2:",
                              AppConst.QUIZ_RESULT_PAGE_4_QUESTION_2,
                              "Painting"),
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
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: "EMAIL ME ANSWERS",
                  funct: () {
                    sendEmailDialog(context);
                  },
                ),

                //
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
          border: Border.all(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            questionNumber,
            style: const TextStyle(
                fontSize: 14, color: grey600, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: Get.height * 0.008,
          ),
          Text(
            question,
            style: const TextStyle(
                fontSize: 17, fontWeight: FontWeight.w600, color: grey800),
          ),
          SizedBox(
            height: Get.height * 0.010,
          ),
          const Text(
            "Answer:",
            style: TextStyle(
                fontSize: 14, color: grey600, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: Get.height * 0.008,
          ),
          Text(
            answer,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: grey900),
          )
        ],
      ),
    );
  }
}
