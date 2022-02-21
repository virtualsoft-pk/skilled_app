import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_colors.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_widgets.dart';

class HelpAndSupportScreen extends StatefulWidget {
  @override
  _HelpAndSupportScreenState createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
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
          "Help & Support",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.03,
            ),
            Text(
              "Help, I have a question & I need an answer",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Text(
              "From your career list topics, we can suggest you best videos, courses, feeds for you",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Text(
              "FAQ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            expendedTile(),
            SizedBox(
              height: Get.height * 0.01,
            ),
            expendedTile(),
            SizedBox(
              height: Get.height * 0.01,
            ),
            expendedTile(),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 20),
        child: FloatingActionButton(
          backgroundColor: buttonColor,
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20.0)), //this right here
                    child: Container(
                      height: Get.height * 0.64,
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Column(
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Contect Us",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Container(
                                  height: Get.height * 0.09,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.5),
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Icon(
                                    Icons.close,
                                    size: 20,
                                  )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Get.height * 0.04,
                            ),
                            Text(
                              "Name",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: Get.height * 0.02,
                            ),
                            customTextField(
                              text: "Your Name",
                            ),
                            SizedBox(
                              height: Get.height * 0.03,
                            ),
                            Text(
                              "Email Address",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: Get.height * 0.02,
                            ),
                            customTextField(text: "Your Email Address"),
                            SizedBox(
                              height: Get.height * 0.03,
                            ),
                            Text(
                              "What you want to know?",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: Get.height * 0.01,
                            ),
                            customTextField(text: "Your issue here"),
                            SizedBox(
                              height: Get.height * 0.04,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: resizableButton(
                                  HPadding: Get.width * 0.33,
                                  VPadding: 20,
                                  border: 14,
                                  name: "Send"),
                            ),
                            SizedBox(
                              height: Get.height * 0.01,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          },
          child: Icon(
            Icons.mail_outline_rounded,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Container expendedTile() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            color: backButtonColor, borderRadius: BorderRadius.circular(20)),
        child: ExpansionTile(
          title: ListTile(
            leading: Text(
              "How do I edit my careers list later?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "Click on the Settings icon on your taskbar and click ‘Careers List’. Click edit - in the top right corner to remove careers and click the plus icon - in the bottom right to add careers.",
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ));
  }
}
