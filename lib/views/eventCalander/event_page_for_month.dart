import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/eventCalander/upcoming_events_screen.dart';
import 'package:skilled_app/views/responsive.dart';

import '../../utils/app_colors.dart';
import 'completed_events_screen.dart';

class EventPageForMonth extends StatefulWidget {
  const EventPageForMonth({Key? key}) : super(key: key);

  @override
  State<EventPageForMonth> createState() => _EventPageForMonthState();
}

class _EventPageForMonthState extends State<EventPageForMonth>
    with SingleTickerProviderStateMixin {
  String? dropdownvalue = 'This Week';
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

  final Map<DateTime, List<CleanCalendarEvent>> _events = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isTablet(context) ? Get.width * 0.05 : 16,
            vertical: Responsive.isTablet(context) ? 32 : 8,
          ),
          child: Column(children: [
            ListTile(
              leading: const Text(
                "Events",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Container(
                height: 40,
                padding: const EdgeInsets.only(left: 12, right: 15),
                decoration: BoxDecoration(
                  color: const Color(0xffF4F4F5),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: DropdownButton(
                  underline: const SizedBox(),
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
                          style: const TextStyle(
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
                    setState(() {
                      dropdownvalue = newValue;
                    });
                  },
                ),
              ),
            ),
            if (dropdownvalue == 'This Month' || dropdownvalue == 'This Week')
              Expanded(
                flex: dropdownvalue == 'This Month' ? 2 : 1,
                child: Calendar(
                  onDateSelected: (val) {},
                  selectedColor: Colors.transparent,
                  todayColor: Colors.transparent,
                  eventColor: purple,
                  hideTodayIcon: true,
                  bottomBarColor: const Color(0xffEDEFF4),
                  startOnMonday: true,
                  weekDays: const [
                    'Mo',
                    'Tu',
                    'We',
                    'Th',
                    'Fr',
                    'Sa',
                    'Su',
                  ],
                  events: _events,
                  // bottomBarArrowColor: Colors.black,
                  // bottomBarTextStyle: TextStyle(
                  //   color: Colors.black,
                  // ),
                  isExpanded: false, //dropdownvalue == 'This Month',
                  hideBottomBar: false,
                  expandableDateFormat: 'EEEE, dd. MMMM yyyy',
                  dayOfWeekStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 11,
                  ),
                ),
              ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: Get.height * 0.06,
                width: double.infinity,
                child: Center(
                  child: TabBar(
                    indicatorColor: const Color(0xff6E928C),
                    controller: _tabController,
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                    isScrollable: false,
                    tabs: const [
                      Tab(text: 'Upcoming Events'),
                      Tab(text: 'Completed Events'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              // color: Colors.grey,
              // width: double.infinity,
              // height: Get.height * 0.6,
              child: TabBarView(
                controller: _tabController,
                children: [
                  UpCommingEvent(
                    fun: () {
                      // isHideCalander = true;
                      setState(() {});
                    },
                  ),
                  CompleteEvent(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
