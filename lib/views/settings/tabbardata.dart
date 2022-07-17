import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/model/model.dart';
import 'package:skilled_app/views/responsive.dart';

class TabbarData extends StatefulWidget {
  @override
  _TabbarDataState createState() => _TabbarDataState();
}

class _TabbarDataState extends State<TabbarData> {
  List<Model> data = [
    Model(
        imagepath: "assets/Group 12684 (1).png",
        description:
            "Skill Share just published our list of the\n top 10 new UI/UX design course.",
        time: "1h ago"),
    Model(
        imagepath: "assets/Ellipse 582 (1).png",
        description:
            "Miah Anders jmention you in a comment\n in yor forum thread:",
        time: "5h ago"),
    Model(
        imagepath: "assets/Gruop 777.png",
        description:
            "Skill Share just published our list of the\n top 10 new UI/UX design course.",
        time: "1h ago"),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              padding: Responsive.isTablet(context)
                  ? EdgeInsets.only()
                  : EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              separatorBuilder: (c, i) {
                return Divider();
              },
              itemCount: data.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, i) {
                index = i;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // i == 0
                    //     ? SizedBox()
                    //     : Divider(
                    //   thickness: 0.9,
                    //   color: Colors.grey,
                    // ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(width: Get.width * 0.02),
                        Column(
                          children: [
                            Image.asset(data[i].imagepath!),
                          ],
                        ),
                        // SizedBox(width: Get.width * 0.02),
                        if (Responsive.isTablet(context))
                          const SizedBox(
                            width: 8,
                          ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // SizedBox(height: Get.height * 0.01),
                            if (Responsive.isMobile(context))
                              SizedBox(
                                  width: Get.width * 0.01,
                                  height: Get.height * 0.01),
                            Text(
                              data[i].description!,
                              style: TextStyle(
                                fontSize:
                                    Responsive.isTablet(context) ? 10 : 14,
                              ),
                            ),
                            SizedBox(height: Get.height * 0.01),
                            Text(
                              data[i].time!,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize:
                                    Responsive.isTablet(context) ? 10 : 14,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                );
              },
            ),
            // index == data.length - 1
            //     ? SizedBox()
            //     : Divider(
            //   thickness: 0.9,
            //   color: Colors.grey,
            // ),
          ],
        ),
      ),
    );
  }
}
