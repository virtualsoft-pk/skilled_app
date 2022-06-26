import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/eventCalander/in_person.dart';
import 'package:skilled_app/widgets/add_event_calender.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'package:black_hole_flutter/black_hole_flutter.dart';

class UpCommingEvent extends StatefulWidget {
  UpCommingEvent({
    Key? key,
    this.fun,
  }) : super(key: key);
  Function? fun;
  @override
  _UpCommingEventState createState() => _UpCommingEventState();
}

class _UpCommingEventState extends State<UpCommingEvent> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemCount: isExpand == false ? 1 : 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 10, left: 16, right: 16, bottom: 12),
                      height: Get.height * 0.1,
                      width: Get.width * 0.9,
                      decoration: BoxDecoration(
                        color: tilecolor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        onTap: () {
                          context.navigator.push<void>(
                              SwipeablePageRoute(builder: (_) => InPerson()));
                          // Get.to(() => InPerson());
                        },
                        leading: CircleAvatar(
                          child: Image(
                            image: AssetImage('assets/images/img.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('2022 design meetup'),
                              Text(
                                'By evento',
                                style: TextStyle(color: Colors.grey[400]),
                              ),
                            ],
                          ),
                        ),
                        trailing: Column(
                          children: [
                            Text('24 Jan'),
                            Text('5:30 am'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 12),
                      height: Get.height * 0.1,
                      width: Get.width * 0.9,
                      decoration: BoxDecoration(
                        color: tilecolor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Image(
                            image: AssetImage('assets/images/img_1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Game of throns'),
                              Text(
                                'By Netflix',
                                style: TextStyle(color: Colors.grey[400]),
                              ),
                            ],
                          ),
                        ),
                        trailing: Column(
                          children: [
                            Text('24 Jan'),
                            Text('5:30 am'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 12),
                      height: Get.height * 0.1,
                      width: Get.width * 0.9,
                      decoration: BoxDecoration(
                        color: tilecolor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Image(
                            image: AssetImage('assets/images/img_2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Awards show'),
                              Text(
                                'By Evento',
                                style: TextStyle(color: Colors.grey[400]),
                              ),
                            ],
                          ),
                        ),
                        trailing: Column(
                          children: [
                            Text('24 Jan'),
                            Text('5:30 am'),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            isExpand == false
                ? InkWell(
                    onTap: () {
                      widget.fun!();
                      isExpand = true;
                      setState(() {});
                    },
                    child: Center(
                      child: Text(
                        'See all',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     AddEventCalender(context);
      //   },
      //   backgroundColor: floatingcolor,
      //   child: const Icon(
      //     Icons.add,
      //     size: 30,
      //     color: Colors.black,
      //   ),
      // ),
    );
  }
}
