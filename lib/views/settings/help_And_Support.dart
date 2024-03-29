import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:skilled_app/widgets/custom_text_field.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

class HelpAndSupportScreen extends StatefulWidget {
  @override
  _HelpAndSupportScreenState createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: tabAppBar(title: 'Help & Support'),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isTablet(context) ? Get.width * 0.08 : 20),
        child: SingleChildScrollView(
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
      ),
      floatingActionButton: Padding(
        padding: Responsive.isTablet(context)
            ? const EdgeInsets.only(
                bottom: 36,
                right: 74,
              )
            : const EdgeInsets.only(right: 10, bottom: 20),
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
                      child: SingleChildScrollView(
                        child: Container(
                          height: Get.height * 0.64,
                          width: Responsive.isTablet(context)
                              ? Get.width * 0.5
                              : Get.width,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  Responsive.isTablet(context) ? 24 : 12,
                            ),
                            child: Column(
                              // shrinkWrap: true,
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
                                      margin: EdgeInsets.only(top: 15),
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.3),
                                          shape: BoxShape.circle),
                                      child: InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Center(
                                            child: Icon(
                                          Icons.close,
                                          size: 20,
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Name*",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                customTextField(
                                  text: "Your Name",
                                ),
                                SizedBox(
                                  height: Get.height * 0.02,
                                ),
                                Text(
                                  "Email Address*",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                customTextField(text: "Your Email Address"),
                                SizedBox(
                                  height: Get.height * 0.02,
                                ),
                                Text(
                                  "What you want to know?*",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),

                                ///TODO Multi line text field required

                                customTextField(
                                    text: "Type issues here...", maxLines: 4),
                                SizedBox(
                                  height: Get.height * 0.03,
                                ),

                                CustomButton(
                                  text: "SEND",
                                  funct: () {},
                                ),
                                // Align(
                                //   alignment: Alignment.topCenter,
                                //   child: resizableButton(
                                //       HPadding: Get.width * 0.33,
                                //       VPadding: 20,
                                //       border: 14,
                                //       name: "Send"),
                                // ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            },
            child: Image.asset(
              "assets/images/mail.png",
              height: Get.height * 0.037,
            )),
      ),
    );
  }

  Container expendedTile() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        // width: double.infinity,
        decoration: BoxDecoration(
            color: backButtonColor, borderRadius: BorderRadius.circular(8)),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Text(
              "How do I edit my careers list later?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 5),
                child: Text(
                  "Click on the Settings icon on your taskbar and click ‘Careers List’. Click edit - in the top right corner to remove careers and click the plus icon - in the bottom right to add careers.",
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ));
  }
}
