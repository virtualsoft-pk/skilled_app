
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/eventCalander/aboutUs.dart';
import 'package:skilled_app/views/eventCalander/tabbardata.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: Get.height * 0.07,
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: CircleAvatar(
                    backgroundColor: Color(0xffF4F4F5),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 43),
                child: Text(
                  "Notofications ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.014),
            Row(
              children: [
                Container(
                  width: Get.width * 0.46,
                  child: TabBar(
                    labelColor: Colors.black,
                    tabs: [Tab(text: "Direct"), Tab(text: "Overall")],
                  ),
                ),
                SizedBox(width: Get.width * 0.2),
                InkWell(
                  onTap: (){
                   Get.to(AboustUs());
                  },
                child:Text("Mark all as read"),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.02),
            Row(
              children: [
                SizedBox(width: Get.width * 0.04),
                Text(
                  "Today",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              width: Get.width*0.9,
              height: Get.height*0.5,
            child:
            TabBarView(
              children: [
                TabbarData(),
                TabbarData(),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
