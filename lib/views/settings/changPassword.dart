import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

import '../../widgets/custom_button.dart';

class ChangePassword extends StatefulWidget {
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
            onTap: () {},
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
              Text(
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
              Text(
                "New Password",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              customTextField(text: "New password"),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Text(
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
              InkWell(
                  onTap: () {}, child: CustomButton(text: "RESET PASSWORD")),
              SizedBox(
                height: Get.height * 0.04,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
