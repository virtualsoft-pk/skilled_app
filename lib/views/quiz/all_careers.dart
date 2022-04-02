import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/quiz/answer_list.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_const.dart';
import '../../widgets/custom_widgets.dart';
import '../feeds/bottom_navigation/bottom_navigation.dart';

class AllCareers extends StatefulWidget {
  @override
  _AllCareersState createState() => _AllCareersState();
}

class _AllCareersState extends State<AllCareers> {
  List<bool> careerListOptions = [false, false, false, false, false];

  int selectedCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: customBackButton(() {}),
                    ),
                    Expanded(
                      flex: 5,
                      child: Text(
                        'Select All The Careers You Are Interested In',
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
                        height: Get.height * 0.015,
                      ),
                      Row(
                        children: [
                          const Text("Recommended Careers",
                              style: TextStyle(
                                  color: grey800,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18)),
                          const Spacer(),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "$selectedCount /",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 24)),
                            TextSpan(
                                text: "5",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 24))
                          ]))
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      RecommendedCareerTile(
                          "Astrophysicist",
                          "Category : Physics and Space",
                          careerListOptions[0], (val) {
                        setState(() {
                          careerListOptions[0] = val;

                          if (careerListOptions[0]) {
                            selectedCount = selectedCount + 1;
                          } else {
                            selectedCount = selectedCount - 1;
                          }
                        });
                      }),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      RecommendedCareerTile(
                          "Enviromental Scientist",
                          "Category : Science and Environment",
                          careerListOptions[1], (val) {
                        setState(() {
                          careerListOptions[1] = val;
                          if (careerListOptions[1]) {
                            selectedCount = selectedCount + 1;
                          } else {
                            selectedCount = selectedCount - 1;
                          }
                        });
                      }),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      RecommendedCareerTile(
                          "UI/UX Designer",
                          "Category : Design and Computer Science",
                          careerListOptions[2], (val) {
                        setState(() {
                          careerListOptions[2] = val;
                          if (careerListOptions[2]) {
                            selectedCount = selectedCount + 1;
                          } else {
                            selectedCount = selectedCount - 1;
                          }
                        });
                      }),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      RecommendedCareerTile(
                          "Software Engineer",
                          "Category : Tech and Computer Science",
                          careerListOptions[3], (val) {
                        setState(() {
                          careerListOptions[3] = val;
                          if (careerListOptions[3]) {
                            selectedCount = selectedCount + 1;
                          } else {
                            selectedCount = selectedCount - 1;
                          }
                        });
                      }),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      RecommendedCareerTile(
                          "Doctor",
                          "Category : Medical and Biology",
                          careerListOptions[4], (val) {
                        setState(() {
                          careerListOptions[4] = val;
                          if (careerListOptions[4]) {
                            selectedCount = selectedCount + 1;
                          } else {
                            selectedCount = selectedCount - 1;
                          }
                        });
                      }),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      CustomButton(
                        text: "SAVE & CONTINUE TO FEED",
                        funct: () {
                          Get.offAll(() => BottomNavigation());
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

  Widget RecommendedCareerTile(
      String career, String type, bool isSelected, Function onPressed) {
    return InkWell(
      onTap: () {
        onPressed(!isSelected);
      },
      child: Container(
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
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: grey900),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  type,
                  style: TextStyle(
                      fontSize: 12,
                      color: grey600,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Spacer(),
            Transform.scale(
              scale: 1.3,
              child: Checkbox(
                side: BorderSide(color: quizBorderColor),
                value: isSelected,
                onChanged: (val) => onPressed(val),
                activeColor: lightGreenColor,
                checkColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(
                      color: Colors.black,
                    )),
              ),
            ),
          ],
        ),
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
