import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/quiz/available_jobs.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_dialogs.dart';
import '../../widgets/custom_text_field.dart';

class Career extends StatefulWidget {
  @override
  _CareerState createState() => _CareerState();
}

class _CareerState extends State<Career> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customBackButton(() {}),
                    Text(
                      'Career Details',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.transparent,
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.015,
                ),
                Text(
                  "What the “UX Designer” Career?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(
                  "A UX designer optimises apps to improve the ease of use. They do this by exploring different approaches of solve end-users problems, to improve user experience (UX).",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(
                  "Average Salaries",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 21),
                  child: Text(
                      "The average UX Designer earn \$115,743 every year."),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  "Skills you need:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                    "If you want to make a best career in UX Design you have to understand how to do the following things."),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // SizedBox(width: Get.width * 0.07),
                          Container(
                            width: Get.width * 0.02,
                            height: Get.height * 0.01,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(35)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, left: 10),
                            child: Text(
                                " Research. To effectively perform their jobs, UX\n designers must understand what their\n audiences want and how they view the world."),
                          )
                        ],
                      ),
                      SizedBox(height: Get.height * 0.02),
                      Row(
                        children: [
                          // SizedBox(width: Get.width * 0.07),
                          Container(
                            width: Get.width * 0.02,
                            height: Get.height * 0.01,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(35)),
                          ),
                          SizedBox(width: Get.width * 0.07),
                          Text("Collaboration")
                        ],
                      ),
                      SizedBox(height: Get.height * 0.02),
                      Row(
                        children: [
                          // SizedBox(width: Get.width * 0.07),
                          Container(
                            width: Get.width * 0.02,
                            height: Get.height * 0.01,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(35)),
                          ),
                          SizedBox(width: Get.width * 0.07),
                          Text("Wireframing")
                        ],
                      ),
                      SizedBox(height: Get.height * 0.02),
                      Row(
                        children: [
                          // SizedBox(width: Get.width * 0.07),
                          Container(
                            width: Get.width * 0.02,
                            height: Get.height * 0.01,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(35)),
                          ),
                          SizedBox(width: Get.width * 0.07),
                          Text("Visual Communication")
                        ],
                      ),
                      SizedBox(height: Get.height * 0.02),
                      Row(
                        children: [
                          // SizedBox(width: Get.width * 0.07),
                          Container(
                            width: Get.width * 0.02,
                            height: Get.height * 0.01,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(35)),
                          ),
                          SizedBox(width: Get.width * 0.07),
                          Text("Prototyping")
                        ],
                      ),
                      SizedBox(height: Get.height * 0.02),
                      Row(
                        children: [
                          // SizedBox(width: Get.width * 0.07),
                          Container(
                            width: Get.width * 0.02,
                            height: Get.height * 0.01,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(35)),
                          ),
                          SizedBox(width: Get.width * 0.07),
                          Text("Coding (not required, but useful)")
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.05),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: CustomButton(
                    text: "AVAILABLE JOBS",
                    funct: () {
                      Get.to(() => Jobs());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
