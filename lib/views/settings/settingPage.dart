import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/settings/chooseMedia.dart';
import 'package:skilled_app/views/settings/help_And_Support.dart';
import '../../widgets/custom_widgets.dart';


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
          "Setting",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.04,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/settingImage.png"),
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
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            InkWell(
                onTap: () {
                  Get.to(ChooseSocialMedia());
                },
                child: resizableButton(
                    HPadding: 20,
                    VPadding: 13,
                    border: 20,
                    name: "Follow us on social Media")),
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
                                    style: TextStyle(fontSize: 14),
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
                                  Text("BACK TO HOME"),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: buildListTile(Icons.person_outline, "Account")),
            buildListTile(Icons.account_balance_wallet_outlined, "Business"),
            buildListTile(Icons.menu, "Careers List"),
            buildListTile(Icons.lock_outline, "Privacy & Terms"),
            InkWell(
                onTap: () {
                  Get.to(HelpAndSupportScreen());
                },
                child: buildListTile(Icons.phone, "Help & Support")),
            buildListTile(Icons.warning_amber_sharp, "About"),
            buildListTile(Icons.login, "Logout"),
          ],
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

  Widget buildListTile(IconData icon, String text) => ListTile(
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            //shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(18),
            color: Color(0xffF4F4F5),
          ),
          child: Icon(icon),
        ),
        title: Text(text),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
        ),
      );
}
