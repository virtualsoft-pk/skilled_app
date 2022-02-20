import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/quiz/quiz_Result_Page_4.dart';
import 'package:skilled_app/widgets/custom_button.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_const.dart';
import '../../widgets/hamid.dart';

class QuizResultPage3 extends StatefulWidget {
  @override
  _QuizResultPage3State createState() => _QuizResultPage3State();
}

class _QuizResultPage3State extends State<QuizResultPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              customAppBar(AppConst.QUIZ_RESULT_PAGE_3_TEXT),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: backButtonColor,
                          borderRadius: BorderRadius.circular(14)),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Container(
                            height: Get.height * 0.07,
                            width: Get.width * 0.5,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Row(
                      children: [
                        Text("Recommended Careers",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        Spacer(),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "4/",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 24)),
                          TextSpan(
                              text: "5",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24))
                        ]))
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    RecommendedCareerTile(
                        "Astrophysicist", "Category : Physics and Space"),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    RecommendedCareerTile("Enviromental Scientist",
                        "Category : Science and Environment"),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    RecommendedCareerTile("UI/UX Designer",
                        "Category : Design and Computer Science"),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    RecommendedCareerTile("Software Engineer",
                        "Category : Tech and Computer Science"),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    RecommendedCareerTile(
                        "Doctor", "Category : Medical and Biology"),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(QuizResultPage4());
                        },
                        child: CustomButton(text:"Save & continue to Feed")),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget RecommendedCareerTile(String career, String type) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 0.1),
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                career,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Text(
                type,
                style: TextStyle(
                  fontSize: 12,
                  color: progressColor,
                ),
              )
            ],
          ),
          Spacer(),
          CheckWidget(),
        ],
      ),
    );
  }
}

class CheckWidget extends StatelessWidget {
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        check = !check;
      },
      child: Container(
        decoration: BoxDecoration(
            color: checkColor,
            borderRadius: BorderRadius.circular(check ? 3 : 18)),
        padding: EdgeInsets.all(5),
        child: Icon(
          Icons.check,
          size: 15,
        ),
      ),
    );
  }
}
