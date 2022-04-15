import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';

import '../utils/app_colors.dart';

Widget monthCalendar() {
  final Map<DateTime, List<CleanCalendarEvent>> _events = {};
  return Container(
    height: 320,
    width: double.infinity,
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
      isExpanded: true,
      isExpandable: false,
      expandableDateFormat: 'EEEE, dd. MMMM yyyy',
      dayOfWeekStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontSize: 11,
      ),
    ),
  );
}

Widget weekCalendar(
    // bool? isExpandeCalender,
    ) {
  final Map<DateTime, List<CleanCalendarEvent>> _events = {};
  return Container(
    height: 140,
    width: double.infinity,
    child: Calendar(
      selectedColor: purple,
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
  );
}
