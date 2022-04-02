import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skilled_app/views/settings/profileEdit.dart';

import '../../utils/app_colors.dart';

class AccountDetail extends StatefulWidget {
  @override
  _AccountDetailState createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  File? image;
  final picker = ImagePicker();
  Future pickFunction() async {
    final pickImage = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickImage != null) {
        image = File(pickImage.path);
      }
    });
  }

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
          "Account Details",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          InkWell(
              onTap: () {
                Get.to(() => ProfileEdit());
              },
              child: Image.asset(
                "assets/images/edit.png",
                width: Get.width * 0.04,
                height: Get.height * 0.04,
              )),
          InkWell(
            onTap: () {
              Get.to(() => ProfileEdit());
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20, top: 20, left: 10),
              child: Text(
                "Edit",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                image == null
                    ? CircleAvatar(
                        radius: Get.height * 0.078,
                        backgroundColor: Colors.grey.withOpacity(0.3),
                        backgroundImage: AssetImage(
                          "assets/images/profilePic.png",
                        )
                        // child: Container(
                        //   child: Image.asset(
                        //     "assets/images/profilePic.png",
                        //     fit: BoxFit.cover,
                        //     height: Get.height * 0.1,
                        //     width: Get.width * 0.17,
                        //   ),
                        // ),
                        )
                    : CircleAvatar(
                        radius: Get.height * 0.078,
                        backgroundColor: Colors.grey.withOpacity(0.3),
                        backgroundImage: FileImage(image!),
                      ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: InkWell(
                    onTap: () {
                      pickFunction();
                    },
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
                  ),
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            buildListTile(
                "assets/images/user.png", "Full Name", "India Harris"),
            buildListTile(
                "assets/images/mail.png", "Email", "indiaharris345@gmail.com"),
            buildListTile("assets/images/genders.png", "Gender", "Female"),
            buildListTile("assets/images/simpleCalander.png", "Date of Birth",
                "09/09/2006"),
          ],
        ),
      ),
    );
  }
}

Widget buildListTile(String icon, String title, String subtitle) => ListTile(
      leading: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          //shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(18),
          color: Color(0xffF4F4F5),
        ),
        child: Image.asset(
          icon,
          height: Get.height * 0.03,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 12, color: tileTextColor),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    );
