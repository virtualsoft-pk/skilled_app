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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: Get.height * 0.56,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white70,
          ),
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
              Container(
                margin: EdgeInsets.only(left: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Email",
                        ),
                        Text(
                          '*',
                          style: TextStyle(
                            color: Colors.deepOrange,
                          ),
                        )
                      ],
                    ),
                    Image.asset("assets/W.png"),
                    Container(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: customTextField(text: "Enter your Email"),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                child: CustomButton(
                  funct: () {
                    Get.back();
                    emailSentDialog(context);
                  },
                  text: 'SEND EMAIL',
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              )
            ],
          ),
        ),
      );
    },
  );
}

void emailSentDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: Get.height * 0.56,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white70,
          ),
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.08),
              Image.asset(
                  "assets/casual-life-3d-white-envelope-with-blue-letter-in-it 2.png"),
              SizedBox(height: Get.height * 0.04),
              Text(
                'Email Sent!',
                style: const TextStyle(
                  letterSpacing: 2,
                  color: textColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                'Please check your inbox',
                style: const TextStyle(
                  letterSpacing: 2,
                  color: textColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                child: CustomButton(
                  funct: () {
                    Get.back();
                    Get.back();
                  },
                  text: 'BACK TO RESULTS',
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              )
            ],
          ),
        ),
      );
    },
  );
}
