import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';
import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';
import 'changPassword.dart';

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
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
          "Profile Edit",
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: Get.height * 0.078,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    backgroundImage: AssetImage(
                      "assets/images/profilePic.png",
                    ),
                    // child: Container(
                    //   child: Image.asset(
                    //     "assets/images/profilePic.png",
                    //     fit: BoxFit.cover,
                    //     height: Get.height * 0.1,
                    //     width: Get.width * 0.17,
                    //   ),
                    // ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: buttonColor, shape: BoxShape.circle),
                      child: Image.asset(
                        "assets/images/Camera.png",
                        fit: BoxFit.cover,
                        height: Get.height * 0.03,
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
                    Text("Full name"),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    customTextField(text: "India Harris"),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Text("Email address"),
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
                    customTextField(text: "Female"),
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
                        child: CustomButton(text:"Save changes")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}