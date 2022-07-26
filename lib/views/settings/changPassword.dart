import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/auth/forgot_password.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

import '../../widgets/custom_button.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: tabAppBar(
          title: "Change Password",
          trailing: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Padding(
                padding: EdgeInsets.only(top: 8, right: 12),
                child: Text("Cancel")),
          )),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          padding: EdgeInsets.symmetric(
              horizontal: Responsive.isTablet(context) ? Get.width * 0.3 : 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.04,
              ),
              const Text(
                "Current password",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              customTextField(
                text: "Current password",
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              const Text(
                "New Password",
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              customTextField(text: "New password"),
              SizedBox(
                height: Get.height * 0.03,
              ),
              const Text(
                "Confirm New Password",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              customTextField(text: "Confirm new password"),
              SizedBox(
                height: Get.height * 0.04,
              ),
              CustomButton(
                text: "UPDATE",
                funct: () {
                  Get.back();
                },
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const ForgotPassword());
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
