import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../utils/app_colors.dart';
import '../responsive.dart';
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
      appBar: tabAppBar(title: "Account"),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Responsive.isTablet(context)
            ? Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          child: _SettingTile(
                            label: "Account Details",
                            iconPath: "assets/images/user.png",
                            onTap: () {
                              Get.to(() => AccountDetail());
                            },
                          ),
                        ),
                        SizedBox(
                          child: _SettingTile(
                            label: "Change Password",
                            iconPath: "assets/images/Lock.png",
                            onTap: () {
                              Get.to(() => ChangePassword());
                            },
                            desc: "It's good idea to use strong password",
                          ),
                        ),
                        SizedBox(
                          child: _SettingTile(
                            label: "Notifications",
                            iconPath: "assets/images/notification.png",
                            onTap: () {
                              Get.to(() => NotificationScreen());
                            },
                          ),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : Column(
                children: [
                  InkWell(
                      onTap: () {
                        context.navigator.push<void>(SwipeablePageRoute(
                            builder: (_) => AccountDetail()));
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
                    child: buildListTile(
                        "assets/images/Lock.png",
                        "Change Password",
                        "It’s good idea to use strong password"),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  InkWell(
                    onTap: () {
                      context.navigator.push<void>(SwipeablePageRoute(
                          builder: (_) => NotificationScreen()));
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

class _SettingTile extends StatelessWidget {
  const _SettingTile({
    Key? key,
    required this.onTap,
    required this.iconPath,
    required this.label,
    this.desc = '',
  }) : super(key: key);

  final VoidCallback onTap;
  final String iconPath, label, desc;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                //shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffF4F4F5),
              ),
              child: Image.asset(
                iconPath,
                fit: BoxFit.cover,
                height: 26,
                width: 26,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  desc,
                  style: TextStyle(color: grey500, fontSize: 12),
                ),
              ],
            )
          ],
        ));
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
