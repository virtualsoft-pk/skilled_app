import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

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
      backgroundColor: Colors.white,
      appBar: tabAppBar(
          title: "Notification Settings",
          trailing: const SizedBox(
            width: 32,
          )),
      body: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isTablet(context) ? Get.width * 0.08 : 20,
            vertical: 20),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: notificationTile("Someome mention me",
                  "When someone replies to my\nforum post", firstCheck, (a) {
                setState(() {
                  firstCheck = a;
                });
              }),
            ),
            notificationTile(
                "Push notification", "Send push notification", secondCheck,
                (a) {
              setState(() {
                secondCheck = a;
              });
            }),
            notificationTile(
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

  Widget notificationTile(
      String title, String subTitle, bool isChecked, Function onPressed) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: Responsive.isTablet(context)
                  ? Get.width * 0.65
                  : Get.width * 0.75,
              child: Text(
                subTitle,
                style:
                    const TextStyle(fontSize: 14, color: notificationTextColor),
              ),
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
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
      ]),
    );
  }
}
