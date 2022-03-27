
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../views/quiz/available_jobs.dart';
import '../views/quiz/quiz_result.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

void sendEmailDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Container(
            height: Get.height * 0.6,
            width: Get.width * 0.83,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white70,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.08),
                  Text(
                    "ENTER YOUR EMAIL ADDRESS",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.9),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12, top: 132),
                            child: Text("Email"),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/W.png")
                        ],
                      ),
                      Container()
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: customTextField(text:"Enter your Email"),
                  ),

                  // Container(
                  //   width: Get.width * 0.65,
                  //   height: Get.height * 0.07,
                  //   decoration: BoxDecoration(
                  //       color: Color(0xffF4F4F5),
                  //       borderRadius: BorderRadius.circular(15)),
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(top: 16, left: 18),
                  //     child: Text(
                  //       "Enter your email",
                  //       style: TextStyle(fontSize: 18),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: CustomButton(
                      funct: (){
                        Get.back();
                        emailSentDialog(context);
                      },
                      text: 'SEND EMAIL',
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

void emailSentDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: Container(
            height: Get.height * 0.56,
            width: Get.width * 0.83,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white70,
            ),
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.08),

                Image.asset("assets/casual-life-3d-white-envelope-with-blue-letter-in-it 2.png"),

                SizedBox(height: Get.height * 0.04),


                Text(
                  'Email Sent!',
                  style:const TextStyle(
                    letterSpacing: 2,
                    color: textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  'Please check your inbox',
                  style:const TextStyle(
                    letterSpacing: 2,
                    color: textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomButton(
                    funct: (){
                      Get.back();
                      Get.back();

                    },
                    text: 'BACK TO RESULTS',
                  ),
                ),
              ],
            ),
          ),
        );
      });
}