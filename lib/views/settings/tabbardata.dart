import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/model/model.dart';


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
    return Column(
      children: [
        ListView.builder(
          itemCount: data.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, i) {
            index = i;
            return Column(
              children: [
                i == 0
                    ? SizedBox()
                    : Divider(
                        thickness: 0.9,
                        color: Colors.grey,
                      ),
                Row(
                  children: [
                    SizedBox(width: Get.width * 0.03),
                    Column(
                      children: [
                        Image.asset(data[i].imagepath!),
                      ],
                    ),
                    SizedBox(width: Get.width * 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height * 0.02),
                        SizedBox(
                            width: Get.width * 0.01, height: Get.height * 0.02),
                        Text(data[i].description!),
                        SizedBox(height: Get.height * 0.02),
                        Text(data[i].time!, style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                )
              ],
            );
          },
        ),
        index == data.length - 1
            ? SizedBox()
            : Divider(
                thickness: 0.9,
                color: Colors.grey,
              ),
      ],
    );
  }
}
