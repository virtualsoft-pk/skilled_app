import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/settings/NotificationScreen.dart';

import '../../utils/app_colors.dart';

class BusinessScreen extends StatefulWidget {
  @override
  _BusinessScreenState createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
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
      ),
      body: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Image.asset("assets/images/skilled.png"),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Business",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Container(
              child: Image.asset(
                "assets/images/businessImage.png",
                width: Get.width * 0.83,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Text(
              "Start advertising your business\nwith Skilld today!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Container(
              child: Image.asset(
                "assets/images/ApplePlay.png",
                height: Get.height * 0.075,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            InkWell(
              onTap: () {
                Get.to(NotificationScreen());
              },
              child: Container(
                child: Image.asset(
                  "assets/images/googlePlay.png",
                  height: Get.height * 0.075,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
