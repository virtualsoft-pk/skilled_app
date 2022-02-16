import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/settings/accountDetail.dart';

import '../../utils/app_colors.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
          "Account",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(Icons.edit),
          Text(
            "Edit",
            style: TextStyle(color: Colors.black),
          )
        ],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Get.to(AccountDetail());
                },
                child: buildListTile(Icons.person_outline, "Account", "")),
            SizedBox(
              height: Get.height * 0.02,
            ),
            buildListTile(Icons.lock_outline, "Change Password",
                "It’s good idea to use strong password"),
            SizedBox(
              height: Get.height * 0.02,
            ),
            buildListTile(Icons.notifications_none, "Notification", ""),
          ],
        ),
      ),
    );
  }
}

Widget buildListTile(IconData icon, String text, String disc) => ListTile(
      leading: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          //shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(18),
          color: Color(0xffF4F4F5),
        ),
        child: Icon(icon),
      ),
      title: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
      subtitle: Text(
        disc,
        style: TextStyle(fontSize: 12),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
    );
