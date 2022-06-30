import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';

class EventPageForMonth extends StatefulWidget {
  const EventPageForMonth({Key? key}) : super(key: key);

  @override
  State<EventPageForMonth> createState() => _EventPageForMonthState();
}

class _EventPageForMonthState extends State<EventPageForMonth>
    with SingleTickerProviderStateMixin {
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

  final Map<DateTime, List<CleanCalendarEvent>> _events = {};

  bool isHideCalader = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: Get.height,
          child: Calendar(
            selectedColor: Colors.transparent,

            eventColor: purple,
            hideTodayIcon: true,
            bottomBarColor: Color(0xffEDEFF4),
            startOnMonday: true,
            weekDays: [
              'Mo',
              'Di',
              'Mi',
              'Do',
              'Fr',
              'Sa',
              'So',
            ],
            events: _events,
            // bottomBarArrowColor: Colors.black,
            // bottomBarTextStyle: TextStyle(
            //   color: Colors.black,
            // ),
            isExpanded: false,
            isExpandable: false,
            expandableDateFormat: 'EEEE, dd. MMMM yyyy',
            dayOfWeekStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 11,
            ),
          ),
        )
      ]),
    );
  }
}
        // body: TabBarView(
        //   controller: _tabController,
        //   children: [
        //     UpCommingEvent(
        //       fun: () {
        //         isHideCalader = true;
        //         setState(() {});
        //       },
        //     ),
        //     const CompleteEvent(),
        //   ],
        // ),


// Align(
//                     alignment: Alignment.topLeft,
//                     child: Container(
//                       //height: Get.height * 0.06,
//                       width: double.infinity,
//                       child: Center(
//                         child: TabBar(
//                           indicatorColor: Color(0xff6E928C),
//                           controller: _tabController,
//                           labelColor: Colors.black,
//                           isScrollable: true,
//                           tabs: [
//                             Tab(text: 'Upcoming Events'),
//                             Tab(text: 'Completed Events'),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),

// return Container(
//     height: 324,
//     width: double.infinity,
//     child: Calendar(
//       selectedColor: Colors.transparent,

//       eventColor: purple,
//       hideTodayIcon: true,
//       bottomBarColor: Color(0xffEDEFF4),
//       startOnMonday: true,
//       weekDays: [
//         'Mo',
//         'Di',
//         'Mi',
//         'Do',
//         'Fr',
//         'Sa',
//         'So',
//       ],
//       events: _events,
//       // bottomBarArrowColor: Colors.black,
//       // bottomBarTextStyle: TextStyle(
//       //   color: Colors.black,
//       // ),
//       isExpanded: true,
//       isExpandable: false,
//       expandableDateFormat: 'EEEE, dd. MMMM yyyy',
//       dayOfWeekStyle: TextStyle(
//         color: Colors.black,
//         fontWeight: FontWeight.w800,
//         fontSize: 11,
//       ),
//     ),
//   )

// class _EventHeading extends StatelessWidget {
//   const _EventHeading({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Text(
//         "Events",
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       trailing: Container(
//         height: 40,
//         padding: EdgeInsets.only(left: 12, right: 15),
//         decoration: BoxDecoration(
//           color: Color(0xffF4F4F5),
//           borderRadius: BorderRadius.circular(4),
//         ),
//         child: DropdownButton(
//           underline: SizedBox(),
//           // Initial Value
//           value: dropdownvalue,
//           // Down Arrow Icon
//           icon: const Icon(
//             Icons.keyboard_arrow_down,
//             color: Color(0xff777B82),
//             size: 20,
//           ),
//           // Array list of items
//           items: items.map(
//             (String e) {
//               return DropdownMenuItem(
//                 value: e,
//                 child: Text(
//                   e,
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w500,
//                     color: Color(0xff777B82),
//                   ),
//                 ),
//               );
//             },
//           ).toList(),
//           // After selecting the desired option,it will
//           // change button value to selected value
//           onChanged: (String? newValue) {
//             setState(
//               () {
//                 dropdownvalue = newValue!;
//                 if (newValue == 'Today') {
//                   isHideCalader = true;
//                 }
//                 if (newValue == 'This Week') {
//                   Navigator.pushReplacement(
//                     context,
//                     PageRouteBuilder(
//                         pageBuilder: (_, __, ___) => BottomNavigationForWeek()),
//                   );

//                   // Get.off(() => BottomNavigationForWeek());
//                 }
//                 if (newValue == 'This Month') {
//                   isHideCalader = false;
//                 }
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
