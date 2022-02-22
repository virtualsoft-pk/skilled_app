
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/quiz/available_jobs.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

class Career extends StatefulWidget {
  @override
  _CareerState createState() => _CareerState();
}

class _CareerState extends State<Career> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        dialougeBox();
                      },
                      child: CircleAvatar(
                        child: Icon(Icons.arrow_back_ios,
                            color: Colors.black, size: 15),
                        backgroundColor: Colors.white70,
                      ),
                    ),
                    SizedBox(width: Get.width * 0.2),
                    Text(
                      "Career Details",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 75),
                child: Text(
                  "What the “UX Designer” Career?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 18),
                child: Text(
                    "A UX designer optimises apps to improve the ease of use. They do this by exploring different approaches of solve end-users problems, to improve user experience (UX)."),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text(
                  "Average Salaries",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 21),
                child:
                    Text("The average UX Designer earn \$115,743 every year."),
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 231),
                child: Text(
                  "Skills you need:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Text(
                    "If you want to make a best career in UX Design you have to understand how to do the following things."),
              ),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.07),
                  Container(
                    width: Get.width * 0.02,
                    height: Get.height * 0.01,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(35)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 34, left: 10),
                    child: Text(
                        " Research. To effectively perform their jobs, UX\n designers must understand what their\n audiences want and how they view the world."),
                  )
                ],
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.07),
                  Container(
                    width: Get.width * 0.02,
                    height: Get.height * 0.01,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(35)),
                  ),
                  SizedBox(width: Get.width * 0.07),
                  Text("Collaboration")
                ],
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.07),
                  Container(
                    width: Get.width * 0.02,
                    height: Get.height * 0.01,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(35)),
                  ),
                  SizedBox(width: Get.width * 0.07),
                  Text("Wireframing")
                ],
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.07),
                  Container(
                    width: Get.width * 0.02,
                    height: Get.height * 0.01,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(35)),
                  ),
                  SizedBox(width: Get.width * 0.07),
                  Text("Visual Communication")
                ],
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.07),
                  Container(
                    width: Get.width * 0.02,
                    height: Get.height * 0.01,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(35)),
                  ),
                  SizedBox(width: Get.width * 0.07),
                  Text("Prototyping")
                ],
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.07),
                  Container(
                    width: Get.width * 0.02,
                    height: Get.height * 0.01,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(35)),
                  ),
                  SizedBox(width: Get.width * 0.07),
                  Text("Coding (not required, but useful)")
                ],
              ),
              SizedBox(height: Get.height * 0.1),
              // InkWell(
              //   onTap: () {
              //     Get.to(Jobs());
              //   },
              //   child: Container(
              //     width: Get.width * 0.9,
              //     height: Get.height * 0.09,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(15),
              //         color: Color(0xffFBC799)),
              //     child: Center(
              //         child: Text(
              //       "AVAILABLE JOBS",
              //       style: TextStyle(fontSize: 18),
              //     )),
              //   ),
              // )

              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: CustomButton(text: "AVAILABLE JOBS", funct: (){
                  Get.to(()=> Jobs());
                },),
              ),

            ],
          ),
        ),
      ),
    );
  }

  void dialougeBox() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: Container(
              height: Get.height * 0.56,
              width: Get.width * 0.83,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white70,
              ),
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.08),
                  Text(
                    "ENTER YOUR EMAIL ADDRESS",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.9),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 55, top: 132),
                            child: Text("Email"),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Image.asset("Assets/W.png"),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: Get.width * 0.65,
                    height: Get.height * 0.07,
                    decoration: BoxDecoration(
                        color: Color(0xffF4F4F5),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, left: 18),
                      child: Text(
                        "Enter your email",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Container(
                    width: Get.width * 0.5,
                    height: Get.height * 0.07,
                    decoration: BoxDecoration(
                        color: Color(0xffFBC799),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, left: 18),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40, top: 2),
                        child: Text(
                          "SEND EMAIL",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.9),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
