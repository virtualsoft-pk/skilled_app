import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/auth/sign_in.dart';
import 'package:skilled_app/views/auth/sign_up.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/views/settings/busnissScreen.dart';
import 'package:skilled_app/views/settings/careerListScreen.dart';
import 'package:skilled_app/views/settings/chooseMedia.dart';
import 'package:skilled_app/views/settings/help_And_Support.dart';
import 'package:skilled_app/views/settings/privacy.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_widgets.dart';
import 'aboutUs.dart';
import 'accountScreen.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          Responsive.isMobile(context)
              ? "Settings"
              : "Settings\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      Responsive.isTablet(context) ? Get.width * 0.2 : 2),
              width: Get.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 6,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      backgroundImage: AssetImage("assets/images/pro.png"),
                      radius: 60,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "India Harris",
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "@indiaharris",
                      style: TextStyle(fontSize: 14, color: progressType),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () {
                        // showDialog(
                        //     context: context,
                        //     builder: (BuildContext context) {
                        //       return customDialog();
                        //     });
                        context.navigator.push<void>(SwipeablePageRoute(
                            builder: (_) => ChooseSocialMedia()));
                        // Get.to(() => ChooseSocialMedia());
                      },
                      child: resizableButton(
                          HPadding: 16,
                          VPadding: 10,
                          border: 20,
                          name: "Follow us on social Media"),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    InkWell(
                        onTap: () {
                          context.navigator.push<void>(
                              SwipeablePageRoute(builder: (_) => Account()));
                          // Get.to(() => Account());
                        },
                        child:
                            buildListTile("assets/images/user.png", "Account")),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    InkWell(
                        onTap: () {
                          context.navigator.push<void>(SwipeablePageRoute(
                              builder: (_) => BusinessScreen()));
                          // Get.to(BusinessScreen());
                        },
                        child: buildListTile(
                            "assets/images/wallet.png", "Business")),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    InkWell(
                      onTap: () {
                        context.navigator.push<void>(SwipeablePageRoute(
                            builder: (_) => CareerListScreen()));
                        // Get.to(() => CareerListScreen());
                      },
                      child: buildListTile(
                          "assets/images/list.png", "Careers List"),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    InkWell(
                      onTap: () {
                        context.navigator.push<void>(
                            SwipeablePageRoute(builder: (_) => Privacy()));
                        // Get.to(() => Privacy());
                      },
                      child: buildListTile(
                          "assets/images/Lock.png", "Privacy & Terms"),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    InkWell(
                        onTap: () {
                          context.navigator.push<void>(SwipeablePageRoute(
                              builder: (_) => HelpAndSupportScreen()));
                          // Get.to(() => HelpAndSupportScreen());
                        },
                        child: buildListTile(
                            "assets/images/phone.png", "Help & Support")),
                    SizedBox(height: Get.height * 0.01),
                    InkWell(
                      onTap: () {
                        context.navigator.push<void>(
                            SwipeablePageRoute(builder: (_) => AboustUs()));
                        // Get.to(() => AboustUs());
                      },
                      child: buildListTile(
                          "assets/images/Information.png", "About"),
                    ),
                    SizedBox(height: Get.height * 0.01),
                    InkWell(
                      onTap: () {
                        Get.offAll(() => SignIn());
                      },
                      child:
                          buildListTile("assets/images/logout.png", "Logout"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: Get.width * 0.1,
          ),
        ],
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
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            //shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(15),
            color: Color(0xffF4F4F5),
          ),
          child: Container(
            child: Image.asset(
              image,
              height: 14,
            ),
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

  void createAnAccountToAccessSettingsDiaglog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ), //this right here
          child: Container(
            height: Get.height * 0.5,
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CREATE AN ACCOUNT TO ACCESS SETTINGS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "assets/images/dialogImage.png",
                      height: Get.height * 0.2,
                    )
                  ]),
                  CustomButton(
                      funct: () {
                        context.navigator.push<void>(
                            SwipeablePageRoute(builder: (_) => SignUpView()));
                        // Get.to(() => SignUpView());
                      },
                      text: "Create Account"),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Text(
                      "BACK TO HOME",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
