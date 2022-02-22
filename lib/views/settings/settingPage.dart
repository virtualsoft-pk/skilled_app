import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/settings/busnissScreen.dart';
import 'package:skilled_app/views/settings/help_And_Support.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_widgets.dart';
import 'accountScreen.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Settings",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.02,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.3),
                backgroundImage: AssetImage("assets/images/pro.png"),
                radius: 60,
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Text(
                "India Harris",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Text(
                "@indiaharris",
                style: TextStyle(fontSize: 14, color: progressType),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              InkWell(
                  onTap: () {
                    // showDialog(
                    //     context: context,
                    //     builder: (BuildContext context) {
                    //       return customDialog();
                    //     });
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0)), //this right here
                            child: Container(
                              height: Get.height * 0.5,
                              width: Get.width,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  //   crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "CREATE AN ACCOUNT TO ACCESS SETTINGS",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.03,
                                    ),
                                    Container(
                                      child: Image.asset(
                                          "assets/images/dialogImage.png"),
                                    ),
                                    resizableButton(
                                        HPadding: Get.width * 0.15,
                                        VPadding: 15,
                                        border: 14,
                                        name: "Create Account"),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Text(
                                      "BACK TO HOME",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: resizableButton(
                      HPadding: 16,
                      VPadding: 10,
                      border: 20,
                      name: "Follow us on social Media")),
              SizedBox(
                height: Get.height * 0.02,
              ),
              InkWell(
                  onTap: () {
                    Get.to(Account());
                  },
                  child: buildListTile("assets/images/user.png", "Account")),
              SizedBox(
                height: Get.height * 0.01,
              ),
              InkWell(
                  onTap: () {
                    Get.to(BusinessScreen());
                  },
                  child: buildListTile("assets/images/wallet.png", "Business")),
              SizedBox(
                height: Get.height * 0.01,
              ),
              buildListTile("assets/images/list.png", "Careers List"),
              SizedBox(
                height: Get.height * 0.01,
              ),
              buildListTile("assets/images/Lock.png", "Privacy & Terms"),
              SizedBox(
                height: Get.height * 0.01,
              ),
              InkWell(
                  onTap: () {
                    Get.to(Get.to(HelpAndSupportScreen()));
                  },
                  child: buildListTile(
                      "assets/images/phone.png", "Help & Support")),
              SizedBox(height: Get.height * 0.01),
              buildListTile("assets/images/Information.png", "About"),
              SizedBox(height: Get.height * 0.01),
              buildListTile("assets/images/logout.png", "Logout"),
            ],
          ),
        ),
      ),
    );
  }

  Container customDialog() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("CREATE AN ACCOUNT TO ACCESS SETTINGS"),
          Container(
            child: Image.asset("assets/images/dialogImage.png"),
          ),
          resizableButton(
              HPadding: 20, VPadding: 20, border: 10, name: "Create Account")
        ],
      ),
    );
  }

  Widget buildListTile(String image, String text) => ListTile(
        leading: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            //shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(15),
            color: Color(0xffF4F4F5),
          ),
          child: Container(
            child: Image.asset(image),
          ),
        ),
        title: Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 15,
        ),
      );
}
