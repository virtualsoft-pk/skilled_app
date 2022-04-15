import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/eventCalander/in_person.dart';
import 'package:skilled_app/views/feeds/bottom_navigation/bottom_navigation.dart';
import 'package:skilled_app/widgets/custom_button.dart';

class Jobs extends StatefulWidget {
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Container(
              child: Text(
            "Available Jobs",
            style: TextStyle(color: Colors.black, fontSize: 15),
          )),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.clear, color: Colors.black),
          ),
          backgroundColor: Color(0xffF4F4F5)),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.03),
              Text(
                "“UX Designer” job post near me",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: Get.height * 0.03),
              Row(
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xffF4F4F5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset("assets/Group@2x.png"))),
                  SizedBox(width: Get.width * 0.06),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lead UX Designer",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      // SizedBox(height: Get.height * 0.01),
                      Text(
                        "Snapdocs",
                        style: TextStyle(fontSize: 16),
                      ),
                      // SizedBox(height: Get.height * 0.01),
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
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xffF4F4F5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset("assets/Group@2x.png"))),
                  SizedBox(width: Get.width * 0.06),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lead UX Designer",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      // SizedBox(height: Get.height * 0.01),
                      Text(
                        "Snapdocs",
                        style: TextStyle(fontSize: 16),
                      ),
                      // SizedBox(height: Get.height * 0.01),
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
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color(0xffF4F4F5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.asset("assets/Group@2x.png"))),
                  SizedBox(width: Get.width * 0.06),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lead UX Designer",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      // SizedBox(height: Get.height * 0.01),
                      Text(
                        "Snapdocs",
                        style: TextStyle(fontSize: 16),
                      ),
                      // SizedBox(height: Get.height * 0.01),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width * 0.30,
                    height: Get.height * 0.06,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.1)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text("See more 30+"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                "What’s my career list",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                "It is a list of careers you are interested in learning more about. Based off this list, Skilld’s algorithm creates you a personalised feed (including podcasts,   books, videos, competitions etc.) that allow you to learn about different industries, and how to get be successful in that job.",
                style: TextStyle(height: 1.4),
              ),
              SizedBox(
                height: Get.height * 0.025,
              ),
              CustomButton(
                text: "ADD TO CAREER LIST",
                funct: () {
                  Get.offAll(() => BottomNavigation());
                },
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Color(0xffF4F4F5),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 12,
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.04,
                    ),
                    Text(
                      "BACK TO CAREER",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
