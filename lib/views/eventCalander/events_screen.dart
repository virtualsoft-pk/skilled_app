import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/eventCalander/bottom_bar_for_month.dart';
import 'package:skilled_app/views/eventCalander/upcoming_events_screen.dart';
import 'package:skilled_app/widgets/month_calendar.dart';

import 'bottom_bar_for_week.dart';
import 'completed_events_screen.dart';

class Events extends StatefulWidget {
  Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> with SingleTickerProviderStateMixin {
  String dropdownvalue = 'This Month';
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

  // bool isExp = false;
  // bool isExpandeCalender = false;
  // bool isExpandedForMonth = false;
  bool isHideCalader = true;
  // bool isMonth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                                  Get.offAll(() => BottomNavigationForWeek());
                                }
                                if (newValue == 'This Month') {
                                  Get.offAll(() => BottomNavigationForMonth());
                                }
                              },
                            );
                          },
                        ),
                      ),
                    ),

                    ///Here to Show Today Calander
                    isHideCalader == true ? SizedBox() : SizedBox()
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
      ),

      //  SingleChildScrollView(
      //   child: DefaultTabController(
      //     length: 2,
      //     child: Column(
      //       children: [
      //         SizedBox(
      //           height: Get.height * 0.01,
      //         ),
      //         ListTile(
      //           leading: Text(
      //             "Events",
      //             style: TextStyle(
      //               color: Colors.black,
      //               fontSize: 24,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //           trailing: Container(
      //             padding: EdgeInsets.only(left: 12, right: 12),
      //             decoration: BoxDecoration(
      //               color: Color(0xffF4F4F5),
      //               borderRadius: BorderRadius.circular(12),
      //             ),
      //             child: DropdownButton(
      //               underline: SizedBox(),
      //               // Initial Value
      //               value: dropdownvalue,
      //               // Down Arrow Icon
      //               icon: const Icon(
      //                 Icons.keyboard_arrow_down,
      //                 color: Color(0xff777B82),
      //                 size: 20,
      //               ),
      //               // Array list of items
      //               items: items.map((String items) {
      //                 return DropdownMenuItem(
      //                   value: items,
      //                   child: Text(
      //                     items,
      //                     style: TextStyle(
      //                       fontSize: 12,
      //                       fontWeight: FontWeight.w500,
      //                       color: Color(0xff777B82),
      //                     ),
      //                   ),
      //                 );
      //               }).toList(),
      //               // After selecting the desired option,it will
      //               // change button value to selected value
      //               onChanged: (String? newValue) {
      //                 setState(() {
      //                   dropdownvalue = newValue!;
      //                 });
      //               },
      //             ),
      //           ),
      //         ),
      //         Container(
      //           height: 320,
      //           width: double.infinity,
      //           child: Calendar(
      //             //  hideBottomBar: true,
      //             // todayColor:  Appcolors.purple,
      //             selectedColor: purple,
      //             //eventDoneColor: Colors.purple,
      //             eventColor: purple,
      //             hideTodayIcon: true,
      //             bottomBarColor: purple,
      //             // isExpandable: true,
      //             startOnMonday: true,
      //             weekDays: ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'],
      //             events: _events,
      //             // locale: 'de_DE',
      //             // todayButtonText: 'Heute',
      //             isExpanded: true,
      //             // expandableDateFormat: 'EEEE, dd. MMMM yyyy',
      //             dayOfWeekStyle: TextStyle(
      //                 color: Colors.black,
      //                 fontWeight: FontWeight.w800,
      //                 fontSize: 11),
      //           ),
      //         ),
      //         Container(
      //           height: Get.height * 0.06,
      //           width: double.infinity,
      //           child: Center(
      //             child: TabBar(
      //               labelColor: Colors.black,
      //               isScrollable: true,
      //               tabs: [
      //                 Tab(text: 'Upcoming Events'),
      //                 Tab(text: 'Completed Events'),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           color: Colors.grey,
      //           width: double.infinity,
      //           height: Get.height * 0.6,
      //           child: TabBarView(
      //             children: [
      //               UpCommingEvent(),
      //               CompleteEvent(),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  void _handleNewDate(date) {
    print('Date selected: $date');
  }
}
