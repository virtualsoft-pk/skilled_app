import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessScreen extends StatefulWidget {
  @override
  _BusinessScreenState createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: Get.width,
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customBackButton(),
              Align(
                alignment: Responsive.isTablet(context)
                    ? Alignment.topCenter
                    : Alignment.topLeft,
                child: Container(
                  child: Image.asset(
                    "assets/images/skilled.png",
                    width:
                        Responsive.isMobile(context) ? Get.width * 0.55 : 140,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Responsive.isTablet(context)
                    ? Alignment.topCenter
                    : Alignment.topLeft,
                child: Text(
                  Responsive.isMobile(context)
                      ? "Business"
                      : "Business\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
                  style: TextStyle(
                    fontSize: Responsive.isTablet(context) ? 18 : 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: Get.height * 0.01,
                      top: Responsive.isTablet(context)
                          ? 24
                          : Get.height * 0.01),
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/business-laptop.png",
                    // width: Get.width * 0.83,
                    // fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Start advertising your business\nwith Skilld today!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff333943),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  // padding: EdgeInsets.only(
                  //   left: Get.width * 0.2,
                  //   right: Get.width * 0.2,
                  // ),
                  child: InkWell(
                    onTap: () async {
                      String url =
                          'https://play.google.com/store/apps/details?id=com.skilled_app.skilled_app';
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        print('Not Found');
                      }
                    },
                    child: Image.asset(
                      "assets/images/ApplePlay.png",
                      height: Get.height * 0.075,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () async {
                      String url =
                          'https://play.google.com/store/apps/details?id=com.skilled_app.skilled_app';
                      if (await canLaunch(url)) {
                        await launch(url, forceSafariVC: false);
                      } else {
                        print('Not Found');
                      }
                    },
                    child: Image.asset(
                      "assets/images/googlePlay.png",
                      height: Get.height * 0.075,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
