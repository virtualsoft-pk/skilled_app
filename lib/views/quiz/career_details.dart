import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/quiz/available_jobs.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

class Career extends StatefulWidget {
  @override
  _CareerState createState() => _CareerState();
}

class _CareerState extends State<Career> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: tabAppBar(
        title: "Career Details",
        trailing: const SizedBox(
          width: 48,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: Responsive.isTablet(context) ? 32 : 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.015,
              ),
              const Text(
                "What is a UX designer?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              const Text(
                "A UX designer optimises apps to improve the ease of use. They do this by exploring different approaches of solve end-users problems, to improve user experience (UX).",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              const Text(
                "Average Salaries",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 21),
                child: Text("The average UX Designer earn 115,743 every year."),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              const Text(
                "Skills you need:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              const Text(
                  "If you want to make a best career in UX Design you have to understand how to do the following things."),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // SizedBox(width: Get.width * 0.07),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(35)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 25, left: 9),
                          child: Text(
                              " Research. To effectively perform their jobs, UX\n designers must understand what their\n audiences want and how they view the world."),
                        )
                      ],
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Row(
                      children: [
                        // SizedBox(width: Get.width * 0.07),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(35)),
                        ),
                        const SizedBox(width: 9),
                        const Text("Collaboration")
                      ],
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Row(
                      children: [
                        // SizedBox(width: Get.width * 0.07),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(35)),
                        ),
                        const SizedBox(width: 9),
                        const Text("Wireframing")
                      ],
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Row(
                      children: [
                        // SizedBox(width: Get.width * 0.07),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(35)),
                        ),
                        const SizedBox(width: 9),
                        const Text("Visual Communication")
                      ],
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Row(
                      children: [
                        // SizedBox(width: Get.width * 0.07),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(35)),
                        ),
                        const SizedBox(width: 9),
                        const Text("Prototyping")
                      ],
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Row(
                      children: [
                        // SizedBox(width: Get.width * 0.07),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(35)),
                        ),
                        const SizedBox(width: 9),
                        const Text("Coding (not required, but useful)")
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: Responsive.isTablet(context)
                      ? Get.height * 0.17
                      : Get.height * 0.05),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal:
                        Responsive.isTablet(context) ? Get.width * 0.2 : 16),
                child: CustomButton(
                  text: "AVAILABLE JOBS",
                  funct: () {
                    context.navigator.push<void>(
                      SwipeablePageRoute(
                        builder: (_) => Jobs(),
                      ),
                    );
                    // Get.to(() => Jobs());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
