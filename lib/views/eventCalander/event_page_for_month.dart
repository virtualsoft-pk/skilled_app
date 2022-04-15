import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/eventCalander/upcoming_events_screen.dart';

import '../../widgets/month_calendar.dart';
import 'bottom_bar_for_week.dart';
import 'completed_events_screen.dart';

class EventPageForMonth extends StatefulWidget {
  const EventPageForMonth({Key? key}) : super(key: key);

  @override
  State<EventPageForMonth> createState() => _EventPageForMonthState();
}

class _EventPageForMonthState extends State<EventPageForMonth>
    with SingleTickerProviderStateMixin {
  String dropdownvalue = 'Today';
  // List of items in our dropdown menu
  var items = [
    'Today',
    'This Week',
    'This Month',
  ];
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  bool isHideCalader = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Text(
                      "Events",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Container(
                      height: 40,
                      padding: EdgeInsets.only(left: 12, right: 15),
                      decoration: BoxDecoration(
                        color: Color(0xffF4F4F5),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: DropdownButton(
                        underline: SizedBox(),
                        // Initial Value
                        value: dropdownvalue,
                        // Down Arrow Icon
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xff777B82),
                          size: 20,
                        ),
                        // Array list of items
                        items: items.map(
                          (String e) {
                            return DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff777B82),
                                ),
                              ),
                            );
                          },
                        ).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(
                            () {
                              dropdownvalue = newValue!;
                              if (newValue == 'Today') {
                                isHideCalader = true;
                              }
                              if (newValue == 'This Week') {
                                Get.to(() => BottomNavigationForWeek());
                              }
                              if (newValue == 'This Month') {
                                isHideCalader = false;
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  isHideCalader == true ? SizedBox() : monthCalendar(),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: Get.height * 0.06,
                      width: double.infinity,
                      child: Center(
                        child: TabBar(
                          indicatorColor: Color(0xff6E928C),
                          controller: _tabController,
                          labelColor: Colors.black,
                          isScrollable: true,
                          tabs: [
                            Tab(text: 'Upcoming Events'),
                            Tab(text: 'Completed Events'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: Container(
          // color: Colors.grey,
          // width: double.infinity,
          // height: Get.height * 0.6,
          child: TabBarView(
            controller: _tabController,
            children: [
              UpCommingEvent(
                fun: () {
                  isHideCalader = true;
                  setState(() {});
                },
              ),
              CompleteEvent(),
            ],
          ),
        ),
      ),
    );
  }
}
