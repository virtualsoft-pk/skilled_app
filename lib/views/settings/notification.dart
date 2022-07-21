import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/views/settings/tabbardata.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

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
        backgroundColor: Colors.white,
        appBar: tabAppBar(
          title: "Notifications",
          trailing: SizedBox(width: Responsive.isMobile(context) ? 32 : 0),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal:
                  Responsive.isTablet(context) ? Get.width * 0.1 : 16.0),
          child: Column(
            children: [
              SizedBox(
                height: Responsive.isTablet(context) ? 4 : 0,
              ),

              // Row(
              //   children: [
              //
              //   ],
              // ),

              Row(
                children: [
                  SizedBox(
                    width: Responsive.isTablet(context)
                        ? Get.width * 0.3
                        : Get.width * 0.4,
                    child: TabBar(
                      isScrollable: Responsive.isMobile(context),
                      indicatorWeight: 1,
                      indicatorColor: const Color(0xFF3B577E),
                      labelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: const [Tab(text: "Direct"), Tab(text: "Overall")],
                    ),
                  ),
                  const Spacer(),
                  // SizedBox(
                  //     width: Responsive.isTablet(context)
                  //         ? Get.width * 0.3
                  //         : Get.width * 0.2),
                  InkWell(
                    onTap: () {},
                    child: const Text("Mark all as read"),
                  ),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  const SizedBox(width: 16),
                  const Text(
                    "Today",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Expanded(
                child: TabbarData(),
                // Container(
                //   // color: Colors.red,
                //   child: TabBarView(
                //     children: [
                //       TabbarData(),
                //       TabbarData(),
                //     ],
                //   ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
