import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';

class ChooseSocialMedia extends StatefulWidget {
  @override
  _ChooseSocialMediaState createState() => _ChooseSocialMediaState();
}

class _ChooseSocialMediaState extends State<ChooseSocialMedia> {
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
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: backButtonColor),
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
            "Choose Social Media",
            style: TextStyle(color: Colors.black),
          ),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right: 20, top: 20),
          //     child: Text(
          //       "Cancel",
          //       style: TextStyle(color: Colors.black,fontSize: ),
          //     ),
          //   )
          // ],
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "You can Follow us ",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                InkWell(
                  onTap: () {
                    //Get.to(AccountScreen());
                  },
                  child: buildChooseMediaTile(
                    "assets/images/tiktok.png",
                    "TikTok",
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                buildChooseMediaTile(
                  "assets/images/twitter.png",
                  "twitter",
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                buildChooseMediaTile(
                  "assets/images/youtube.png",
                  "Youtube",
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                buildChooseMediaTile(
                  "assets/images/insta.png",
                  "Instagram",
                ),
              ],
            ),
          ),
        ));
  }

  Container buildChooseMediaTile(String image, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: Get.height * 0.09,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            padding: EdgeInsets.all(20),
            child: Container(
              child: Image.asset(image),
            ),
          ),
          SizedBox(
            width: Get.width * 0.04,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Spacer(),
          Container(child: Image.asset("assets/images/chooseTileIcon.png"))
        ],
      ),
    );
  }
}
