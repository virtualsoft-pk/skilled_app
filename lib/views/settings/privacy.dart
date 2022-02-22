
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/settings/notification.dart';
import 'package:skilled_app/widgets/custom_button.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.07,
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: CircleAvatar(
                    backgroundColor: Color(0xffF4F4F5),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: Colors.black,
                    )),
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 43),
                child: Text(
                  "Privacy & Terms ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 162),
              child: Text(
                "Privacy & Terms",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 162),
              child: Text("Last update january 03, 2022"),
            ),
            SizedBox(
              height: Get.height * 0.043,
            ),
            Row(
              children: [
                SizedBox(
                  width: Get.width * 0.059,
                ),
                Container(
                  width: Get.width * 0.02,
                  height: Get.height * 0.01,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffFBC799)),
                ),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                Text(
                  "Privacy policy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.016,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 23, right: 19),
              child: Text(
                "When you register as a user of our Site and Services, we ask for personal information that will be used to activate your account, provide the Services to you, communicate with you about the status of your account, and for other purposes set out in this Privacy Policy. Your name, company name, address,\n telephone",
                style: TextStyle(fontSize: 16,height:1.6),
              ),
            ),
            SizedBox(
              height: Get.height*0.037,
            ),
            Row(
              children: [
                SizedBox(
                  width: Get.width * 0.059,
                ),
                Container(
                  width: Get.width * 0.02,
                  height: Get.height * 0.01,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffFBC799)),
                ),
                SizedBox(
                  width: Get.width * 0.02,
                ),
                Text(
                  "Terms of use",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.016,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 23, right: 19),
              child: Text(
                "When you register as a user of our Site and Services, we ask for personal information that will be used to activate your account, provide the Services to you, communicate with you about the status of your account, and for   other purposes set out in this Privacy Policy. ",
                style: TextStyle(fontSize: 16,height: 1.6),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            // InkWell(
            //   onTap: (){
            //     Get.to(Notifications());
            //   },
            //   child: Container(
            //     width: Get.width*0.9,
            //     height: Get.height*0.09,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(15),
            //         color: Color(0xffFBC799)
            //     ),
            //     child: Center(child: Text("OKAY, GOT IT",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2.6),)),
            //   ),
            // ),

            CustomButton(text: "OKAY, GOT IT", funct: (){
              Get.to(Notifications());
            },),
          ],
        ),
      ),
    );
  }
}
