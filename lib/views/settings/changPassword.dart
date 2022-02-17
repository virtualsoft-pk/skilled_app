import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/settings/busnissScreen.dart';

import '../../utils/app_colors.dart';
import '../../widgets/customWidgets.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: backButtonColor),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          "Change Password",
          style: TextStyle(color: Colors.black ,)
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: Text(
              "Cancel",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.04,
            ),
            Text(
              "Current password",
              style: TextStyle( fontSize: 12 , fontWeight: FontWeight.w500),
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
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            customTextField(text: "New Password"),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Text(
              "Conform New Password",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            customTextField(text: "Conform New Password"),
            SizedBox(
              height: Get.height * 0.04,
            ),
            InkWell(
                onTap: () {
                  Get.to(BusinessScreen());
                },
                child: customButton("Update")),
            SizedBox(
              height: Get.height * 0.04,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Forgive Password?",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
