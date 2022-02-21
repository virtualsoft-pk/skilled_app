import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/quiz/answer_list.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_const.dart';
import '../../widgets/checkbox.dart';
import '../../widgets/custom_widgets.dart';

class AllCareers extends StatefulWidget {
  @override
  _AllCareersState createState() => _AllCareersState();
}

class _AllCareersState extends State<AllCareers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                customAppBar(AppConst.QUIZ_RESULT_PAGE_3_TEXT),
                Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: backButtonColor,
                            borderRadius: BorderRadius.circular(14)),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            const Icon(Icons.search),
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            Container(
                              height: Get.height * 0.07,
                              width: Get.width * 0.5,
                              child: const TextField(
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
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Recommended Careers",
                              style: TextStyle(
                                  color: grey800,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18)),
                          Spacer(),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "4/",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 24)),
                            TextSpan(
                                text: "5",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 24))
                          ]))
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      RecommendedCareerTile(
                          "Astrophysicist", "Category : Physics and Space"),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      RecommendedCareerTile("Enviromental Scientist",
                          "Category : Science and Environment"),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      RecommendedCareerTile("UI/UX Designer",
                          "Category : Design and Computer Science"),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      RecommendedCareerTile("Software Engineer",
                          "Category : Tech and Computer Science"),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      RecommendedCareerTile(
                          "Doctor", "Category : Medical and Biology"),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      CustomButton(
                        text: "SAVE & CONTINUE TO FEED",
                        funct: () {
                          Get.to(AnswerList());
                        },
                      ),
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
      ),
    );
  }

  Widget RecommendedCareerTile(String career, String type) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                career,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w600, color: grey900),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Text(
                type,
                style: TextStyle(
                    fontSize: 12, color: grey600, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Spacer(),
          Checkbox(
            side: BorderSide(color: quizBorderColor),
            value: true,
            onChanged: (val) {
              setState(() {});
            },
            activeColor: lightGreenColor,
            checkColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(
                  color: Colors.black,
                )),
          ),
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
