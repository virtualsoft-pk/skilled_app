
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/eventCalander/in_person.dart';

class Jobs extends StatefulWidget {
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
              margin: EdgeInsets.only(left: 60),
              child: Text(
                "Available Jobs",
                style: TextStyle(color: Colors.black, fontSize: 15),
              )),
          leading: Icon(Icons.clear, color: Colors.black),
          backgroundColor: Color(0xffF4F4F5)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.06),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Text(
                "“UX Designer” job post near me",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(height: Get.height * 0.03),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                          width: Get.width * 0.2,
                          height: Get.height * 0.1,
                          decoration: BoxDecoration(
                              color: Color(0xffF4F4F5),
                              borderRadius: BorderRadius.circular(30)),
                          child: Image.asset("assets/Group@2x.png")),
                    )
                  ],
                ),
                SizedBox(width: Get.width * 0.06),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lead UX Designer",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: Get.height * 0.01),
                    Text(
                      "Snapdocs",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: Get.height * 0.01),
                    Text(
                      "United States",
                      style: TextStyle(
                          fontSize: 17, color: Colors.grey.withOpacity(0.9)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: Get.height * 0.03),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                          width: Get.width * 0.2,
                          height: Get.height * 0.1,
                          decoration: BoxDecoration(
                              color: Color(0xffF4F4F5),
                              borderRadius: BorderRadius.circular(30)),
                          child: Image.asset("assets/Group@2x.png")),
                    )
                  ],
                ),
                SizedBox(width: Get.width * 0.06),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lead UX Designer",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: Get.height * 0.01),
                    Text(
                      "Snapdocs",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: Get.height * 0.01),
                    Text(
                      "United States",
                      style: TextStyle(
                          fontSize: 17, color: Colors.grey.withOpacity(0.9)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: Get.height * 0.03),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                          width: Get.width * 0.2,
                          height: Get.height * 0.1,
                          decoration: BoxDecoration(
                              color: Color(0xffF4F4F5),
                              borderRadius: BorderRadius.circular(30)),
                          child: Image.asset("assets/Group@2x.png")),
                    )
                  ],
                ),
                SizedBox(width: Get.width * 0.06),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lead UX Designer",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: Get.height * 0.01),
                    Text(
                      "Snapdocs",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: Get.height * 0.01),
                    Text(
                      "United States",
                      style: TextStyle(
                          fontSize: 17, color: Colors.grey.withOpacity(0.9)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Container(
              width: Get.width * 0.35,
              height: Get.height * 0.06,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.1)),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(child: Text("See more 30+")),
            ),
            SizedBox(height: Get.height * 0.02),
            Padding(
              padding: const EdgeInsets.only(right: 176),
              child: Text(
                "What’s my career list",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: Text(
                "It is a list of careers you are interested in learning more about. Based off this list, Skilld’s algorithm creates you a personalised feed (including podcasts,   books, videos, competitions etc.) that allow you to learn about different industries, and how to get be successful in that job.",
                style: TextStyle(height: 1.4),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            InkWell(
              onTap: () {
                Get.to(In_Person());
              },
              child: Container(
                width: Get.width * 0.9,
                height: Get.height * 0.09,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffFBC799)),
                child: Center(
                    child: Text(
                  "ADD TO CARRER LIST",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            Row(
              children: [
                SizedBox(width: Get.width * 0.25),
                CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xffF4F4F5),
                    child: Icon(Icons.arrow_back_ios,
                        color: Colors.black, size: 12)),
                SizedBox(width: Get.width * 0.04),
                Text(
                  "BACK TO CAREER",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}