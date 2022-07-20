import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../widgets/settings_listtile.dart';
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
      appBar: tabAppBar(
          title: "Account",
          trailing: const SizedBox(
            width: 46,
          )),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Responsive.isTablet(context)
            ? Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {
                                  Get.to(() => AccountDetail());
                                },
                                child: buildListTile("assets/images/user.png",
                                    "Account Details")),
                            InkWell(
                                onTap: () {
                                  Get.to(() => const ChangePassword());
                                },
                                child: buildListTile(
                                    "assets/images/Lock.png",
                                    "Change Password",
                                    "It's good idea to use strong password")),
                            InkWell(
                                onTap: () {
                                  Get.to(() => NotificationScreen());
                                },
                                child: buildListTile(
                                  "assets/images/notification.png",
                                  "Notifications",
                                )),
                            const SizedBox(
                              width: 120,
                            ),
                          ],
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
                      context.navigator.push<void>(SwipeablePageRoute(
                          builder: (_) => const ChangePassword()));
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
