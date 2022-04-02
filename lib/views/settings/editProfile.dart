import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skilled_app/views/settings/changPassword.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import '../../utils/app_colors.dart';
import '../../widgets/custom_text_field.dart';

class EditedProfile extends StatefulWidget {
  @override
  _EditedProfileState createState() => _EditedProfileState();
}

class _EditedProfileState extends State<EditedProfile> {
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
          "Edit Profile",
          style: TextStyle(color: Colors.black),
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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: Get.width,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: Get.height * 0.08,
                  backgroundImage: AssetImage("assets/images/settingImage.png"),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: buttonColor, shape: BoxShape.circle),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Text("Full Name"),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  customTextField(text: "India Harris"),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text("Email Adress"),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  customTextField(text: "indiaharris345@gmail.com"),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text("Gender"),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  customTextField(
                      text: "Female", icon: Icon(Icons.arrow_drop_down)),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text("Date of birth"),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  customTextField(
                      text: "09/09/2006", icon: Icon(Icons.calendar_today)),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(ChangePassword());
                      },
                      child: CustomButton(text: "Save changes")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
