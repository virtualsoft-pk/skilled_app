import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/settings/careerListScreen.dart';

import '../../utils/app_colors.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  // bool isToggled = false;
  bool firstCheck = false;
  bool secondCheck = false;
  bool thridCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
          "Notification Setting",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(CareerListScreen());
              },
              child: buildListTile("Someome mention me",
                  "When someone replies to my\nforum post", firstCheck, (a) {
                setState(() {
                  firstCheck = a;
                });
              }),
            ),
            buildListTile(
                "Push notification", "Send push notification", secondCheck,
                (a) {
              setState(() {
                secondCheck = a;
              });
            }),
            buildListTile(
                "Recommendations",
                "Send me notifications when new videos, courses, are recommended for me",
                thridCheck, (a) {
              setState(() {
                thridCheck = a;
              });
            }),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(
      String title, String subTitle, bool isChecked, Function onPressed) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(fontSize: 14, color: notificationTextColor),
      ),
      trailing: Container(
        height: Get.height * 0.03,
        width: Get.width * 0.13,
        //color: Colors.black12,
        child: FlutterSwitch(
          height: 30.0,
          width: 50.0,
          padding: 4.0,
          toggleSize: 15.0,
          borderRadius: 14.0,
          inactiveToggleColor: inActiveTogolColor,
          activeColor: toggleColor,
          inactiveColor: toggleColor.withOpacity(0.5),
          toggleColor: progressColor,
          value: isChecked,
          onToggle: (value) => onPressed(value),
        ),
      ),
    );
  }
}
