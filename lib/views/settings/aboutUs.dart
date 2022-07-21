import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

class AboustUs extends StatefulWidget {
  @override
  _AboustUsState createState() => _AboustUsState();
}

class _AboustUsState extends State<AboustUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: tabAppBar(
          title: 'About Us',
          trailing: SizedBox(
            width: Responsive.isTablet(context) ? Get.width * 0.05 : 32,
          )),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? Get.width * 0.08 : 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 18,
            ),
            Text(
              "Skilld: Empowered to Discover",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Text(
              "Our aim is to empower young people to discover more about industries and jobs that interest them, so they can make informed career path choices and so they can learn skills and develop behaviours.",
              style: TextStyle(height: 1.2, fontSize: 14),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text("About Us",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.014,
            ),
            Container(
              width: double.infinity,
              height: Responsive.isTablet(context)
                  ? Get.height * 0.45
                  : Get.height * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage('assets/unsplash_wD1LRb9OeEo.png'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffFBC799)),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "How can I find out more about Skilld?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text(
              "Go to www.skilldcareerpath.com to learn more about our vision, core values, how we started    and even how you can get involved!",
              style: TextStyle(fontSize: 16, height: 1.6),
            )
          ],
        ),
      ),
    );
  }
}
