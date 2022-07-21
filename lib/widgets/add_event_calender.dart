import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:table_calendar/table_calendar.dart';

import '../utils/app_colors.dart';

AddEventCalender(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) => Container(
            padding: EdgeInsets.symmetric(
              horizontal: Responsive.isTablet(context) ? Get.width * 0.1 : 16,
              vertical: Responsive.isTablet(context) ? 4 : 10,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 4,
                    width: 32,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  const ListTile(
                    leading: Text(
                      'Select date',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TableCalendar(
                    calendarBuilders: CalendarBuilders(
                      headerTitleBuilder: (context, dateTime) {
                        return Text(
                          DateFormat.yMMMMd().format(dateTime),
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        );
                      },
                    ),
                    daysOfWeekHeight: 32,
                    headerStyle: HeaderStyle(
                        formatButtonDecoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                        headerMargin: const EdgeInsets.only(top: 4, bottom: 22),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xFFEDEFF4),
                        ),
                        formatButtonShowsNext: false,
                        formatButtonVisible: false),
                    calendarFormat: CalendarFormat.month,
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                    availableCalendarFormats: const {
                      CalendarFormat.month: 'Month',
                      CalendarFormat.week: 'Week',
                    },
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    weekendDays: const [
                      DateTime.sunday,
                    ],
                    // availableGestures: AvailableGestures.none,
                  ),
                  const SizedBox(
                    height: 20,
                    child: ListTile(
                      leading: Text(
                        'Select Time',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  TimePickerSpinner(
                    itemWidth: Responsive.isTablet(context)
                        ? Get.width * 0.2
                        : Get.width * 0.25,
                    is24HourMode: false,
                    normalTextStyle:
                        const TextStyle(fontSize: 18, color: Colors.grey),
                    highlightedTextStyle:
                        const TextStyle(fontSize: 18, color: Colors.black),
                    spacing: 10,
                    itemHeight: 40,
                    isForce2Digits: true,
                    onTimeChange: (time) {},
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: MediaQuery.of(context).size.width * 0.4,
                    height: 62,
                    color: floatingcolor,
                    visualDensity: VisualDensity.compact,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: Colors.black45,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Text(
                                'ADD TO CALENDAR',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              )),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ));
}
