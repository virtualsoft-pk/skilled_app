import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/eventCalander/upcoming_events_screen.dart';

import 'completed_events_screen.dart';
class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  final Map<DateTime, List<CleanCalendarEvent>> _events = {
   
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height*0.01,
                ),
                ListTile(
                  leading: Text("Events",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
                trailing: Container(
                  height: 36,
                  // width: 110,
                  decoration: BoxDecoration(
                    color: tilecolor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: false,
                      hint: Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text('This month'),
                      ),

                      items: <String>['This month', 'This week', 'This event',].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                )
                ),
                Container(
                  height: Get.height*0.392,
                  width: double.infinity,
                  // color: Colors.purple,
                  child: Calendar(
                  //  hideBottomBar: true,
                    // todayColor:  Appcolors.purple,
                    selectedColor: purple,
                    //eventDoneColor: Colors.purple,

                    eventColor: purple,
                    hideTodayIcon: true,
                    bottomBarColor: purple,
                    // isExpandable: true,

                    startOnMonday: true,
                    weekDays: ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'],
                    events: _events,

                   // locale: 'de_DE',
                    // todayButtonText: 'Heute',
                    isExpanded: true,
                    // expandableDateFormat: 'EEEE, dd. MMMM yyyy',
                    dayOfWeekStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w800, fontSize: 11),
                  ),
                ),
                Container(
                  height: Get.height*0.06,
                  width: double.infinity,

                  child: Center(
                    child: TabBar(
                      labelColor: Colors.black,
                      isScrollable: true,
                      tabs: [
                        Tab(text: 'Upcoming Events'),
                        Tab(text: 'Completed Events'),

                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: Get.height * 0.6,
                  child: TabBarView(
                    children: [
                      UpCommingEvent(),
                      CompleteEvent(),

                    ],
                  ),
                ),
              ],

            ),
          ),
        ),
      ),
    );

  }
  void _handleNewDate(date) {
    print('Date selected: $date');
  }
}
