import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

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
      appBar: tabAppBar(title: "Account"),
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
