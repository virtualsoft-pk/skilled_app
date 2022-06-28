import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/quiz/search_screen.dart';
import 'package:skilled_app/widgets/custom_button.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_widgets.dart';
import '../feeds/bottom_navigation/bottom_navigation.dart';

class AllCareers extends StatefulWidget {
  const AllCareers({Key? key}) : super(key: key);

  @override
  _AllCareersState createState() => _AllCareersState();
}

class _AllCareersState extends State<AllCareers> {
  List<bool> careerListOptions = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  List<Map<String, String>> careersList = [
    {
      'name': 'Astrophysicist',
      'category': 'Category: Physics and Space',
    },
    {
      'name': 'Environmental Scientist',
      'category': 'Category: Science and Environment',
    },
    {
      'name': 'UI/UX Designer',
      'category': 'Category: Design and Computer Science',
    },
    {
      'name': 'Software Engineer',
      'category': 'Category: Tech and Computer Science',
    },
    {
      'name': 'Doctor',
      'category': 'Medical and Biology',
    },
    {
      'name': 'Astrophysicist',
      'category': 'Category: Physics and Space',
    },
    {
      'name': 'Environmental Scientist',
      'category': 'Category: Science and Environment',
    },
    {
      'name': 'UI/UX Designer',
      'category': 'Category: Design and Computer Science',
    },
    {
      'name': 'Software Engineer',
      'category': 'Category: Tech and Computer Science',
    },
    {
      'name': 'Doctor',
      'category': 'Medical and Biology',
    },
  ];

  int selectedCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: customBackButton(),
                    ),
                    const Expanded(
                      flex: 5,
                      child: Center(
                        child: Text(
                          'Select All The Careers You Are\nInterested In',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    // Expanded(
                    //   child: Container(),
                    // ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => const SearchSuggestionScreen());
                      },
                      child: Container(
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
                            SizedBox(
                              height: Get.height * 0.07,
                              width: Get.width * 0.5,
                              child: TextField(
                                onTap: () {
                                  Get.to(() => const SearchSuggestionScreen());
                                },
                                readOnly: true,
                                decoration: const InputDecoration(
                                  hintText: "Search",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
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
                              text: "$selectedCount/",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                  fontSize: 24)),
                          const TextSpan(
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
                    ...List.generate(
                      careersList.length,
                      (index) => RecommendedCareerTile(
                        careersList[index]['name']!,
                        careersList[index]['category']!,
                        careerListOptions[index],
                        (bool value) {
                          if (selectedCount < 5) {
                            setState(() {
                              careerListOptions[index] =
                                  !careerListOptions[index];
                              if (value) {
                                selectedCount++;
                              } else {
                                selectedCount--;
                              }
                            });
                          } else if (careerListOptions[index]) {
                            setState(() {
                              careerListOptions[index] = false;
                              selectedCount--;
                            });
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 38,
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
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  career,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: grey900),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  type,
                  style: const TextStyle(
                      fontSize: 12,
                      color: grey600,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            const Spacer(),
            Transform.scale(
              scale: 1.3,
              child: Checkbox(
                side: const BorderSide(color: quizBorderColor),
                value: isSelected,
                onChanged: (val) => onPressed(val),
                activeColor: lightGreenColor,
                checkColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: const BorderSide(
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

  CheckWidget({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.all(5),
        child: const Icon(
          Icons.check,
          size: 15,
        ),
      ),
    );
  }
}
