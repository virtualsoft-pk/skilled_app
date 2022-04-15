import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/settings/editProfile.dart';

import '../../utils/app_colors.dart';

class AccountDetail extends StatefulWidget {
  @override
  _AccountDetailState createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
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
        actions: [
          InkWell(
            onTap: () {
              Get.to(EditedProfile());
            },
            child: Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: Text(
              "Edit",
              style: TextStyle(color: Colors.black, fontSize: 14),
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
            SizedBox(
              height: Get.height * 0.02,
            ),
            buildListTile(Icons.person_outline, "Full Name", "India Harris"),
            buildListTile(Icons.email, "Email", "indiaharris345@gmail.com"),
            buildListTile(Icons.people_alt_outlined, "Gender", "Female"),
            buildListTile(Icons.calendar_today, "Date of Birth", "09/09/2006"),
          ],
        ),
      ),
    );
  }
}

Widget buildListTile(IconData icon, String title, String subtitle) => ListTile(
      leading: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          //shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(18),
          color: Color(0xffF4F4F5),
        ),
        child: Icon(icon),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 14, color: Colors.grey),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: Get.height * 0.021, color: Colors.black),
      ),
    );
