import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/settings/notification.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'package:black_hole_flutter/black_hole_flutter.dart';
import '../../utils/app_colors.dart';
import 'NotificationScreen.dart';
import 'accountDetails.dart';
import 'changPassword.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          "Account",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  context.navigator.push<void>(
                      SwipeablePageRoute(builder: (_) => AccountDetail()));
                  // Get.to(AccountDetail());
                },
                child: buildListTile(
                    "assets/images/user.png", "Account Details", "")),
            SizedBox(
              height: Get.height * 0.02,
            ),
            InkWell(
              onTap: () {
                context.navigator.push<void>(
                    SwipeablePageRoute(builder: (_) => ChangePassword()));
                // Get.to(() => ChangePassword());
              },
              child: buildListTile("assets/images/Lock.png", "Change Password",
                  "It’s good idea to use strong password"),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            InkWell(
              onTap: () {
                context.navigator.push<void>(
                    SwipeablePageRoute(builder: (_) => NotificationScreen()));
                // Get.to(() => NotificationScreen());
              },
              child: buildListTile(
                "assets/images/notification.png",
                "Notifications",
                "",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildListTile(String icon, String text, String disc) => ListTile(
      leading: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          //shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffF4F4F5),
        ),
        child: Image.asset(
          icon,
          fit: BoxFit.cover,
          height: Get.height * 0.14,
          width: Get.width * 0.063,
        ),
      ),
      title: Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        disc,
        style: TextStyle(fontSize: 12),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 15,
      ),
    );
