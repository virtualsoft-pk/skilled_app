import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ChooseSocialMedia extends StatefulWidget {
  @override
  _ChooseSocialMediaState createState() => _ChooseSocialMediaState();
}

class _ChooseSocialMediaState extends State<ChooseSocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: tabAppBar(
            title: Responsive.isMobile(context)
                ? "Choose Social Media"
                : "Choose Social Media" + "\t" * 15),
        body: SafeArea(
          child: Container(
            width: Get.width,
            padding: EdgeInsets.symmetric(
                horizontal:
                    Responsive.isTablet(context) ? Get.width * 0.08 : 20,
                vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Responsive.isTablet(context)
                      ? Alignment.topCenter
                      : Alignment.topLeft,
                  child: Text(
                    "You can follow us ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                InkWell(
                  onTap: () async {
                    String url = 'https://www.tiktok.com/@skilld_ltd';
                    if (await canLaunch(url)) {
                      await launch(url, forceSafariVC: false);
                    } else {
                      print('Not Found');
                    }
                  },
                  child: buildChooseMediaTile(
                    "assets/images/tiktok.png",
                    "TikTok",
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () async {
                    String url = 'https://twitter.com/@skilld_ltd';
                    if (await canLaunch(url)) {
                      await launch(url, forceSafariVC: false);
                    } else {
                      print('Not Found');
                    }
                  },
                  child: buildChooseMediaTile(
                    "assets/images/twitter.png",
                    "Twitter",
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () async {
                    String url = 'https://www.youtube.com/@skilld_ltd';
                    if (await canLaunch(url)) {
                      await launch(url, forceSafariVC: false);
                    } else {
                      print('Not Found');
                    }
                  },
                  child: buildChooseMediaTile(
                    "assets/images/youtube.png",
                    "Youtube",
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () async {
                    String url = 'https://www.instagram.com/@skilld_ltd';
                    if (await canLaunch(url)) {
                      await launch(url, forceSafariVC: false);
                    } else {
                      print('Not Found');
                    }
                  },
                  child: buildChooseMediaTile(
                    "assets/images/insta.png",
                    "Instagram",
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Container buildChooseMediaTile(String image, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Image(
              image: AssetImage(image),
              width: 30,
              height: 30,
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
