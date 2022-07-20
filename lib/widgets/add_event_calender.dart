import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/responsive.dart';

import '../utils/app_colors.dart';

AddEventCalender(BuildContext context) {
  showModalBottomSheet(
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
                  ListTile(
                    leading: Text(
                      'Select date',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    width: double.infinity,
                    // color: Colors.purple,

                    // TODO: add calendar
                    // child: Calendar(
                    //   startOnMonday: true,
                    //   weekDays: ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'],
                    //   // events: _events,
                    //   events: {},
                    //   //  isExpandable: true,
                    //   // eventDoneColor: Colors.green,
                    //   //  selectedColor: Colors.pink,
                    //   //  todayColor: Colors.blue,
                    //   //  eventColor: Colors.grey,
                    //   // locale: 'de_DE',
                    //   // todayButtonText: 'Heute',
                    //   isExpanded: false,
                    //   expandableDateFormat: 'EEEE, dd. MMMM yyyy',
                    //   dayOfWeekStyle: TextStyle(
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.w800,
                    //       fontSize: 11),
                    // ),
                  ),
                  Container(
                    height: 20,
                    child: ListTile(
                      leading: Text(
                        'Select Time',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  TimePickerSpinner(
                    itemWidth: Responsive.isTablet(context)
                        ? Get.width * 0.2
                        : Get.width * 0.25,
                    is24HourMode: false,
                    normalTextStyle:
                        TextStyle(fontSize: 24, color: Colors.grey),
                    highlightedTextStyle:
                        TextStyle(fontSize: 24, color: Colors.black),
                    spacing: 10,
                    itemHeight: 40,
                    isForce2Digits: true,
                    onTimeChange: (time) {},
                  ),
                  SizedBox(
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
                        Icon(
                          Icons.calendar_today,
                          color: Colors.black45,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'ADD TO CALENDAR',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ));
}
