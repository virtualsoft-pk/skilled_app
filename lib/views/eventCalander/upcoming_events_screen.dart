import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
class upcoming_events_screen extends StatefulWidget {
  const upcoming_events_screen({Key? key}) : super(key: key);

  @override
  _upcoming_events_screenState createState() => _upcoming_events_screenState();
}

class _upcoming_events_screenState extends State<upcoming_events_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              margin: EdgeInsets.only(top: 10,left: 16,right: 16,bottom: 12),
              height: Get.height*0.1,
              width: Get.width*0.9,

              decoration: BoxDecoration(
                color: tilecolor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  child: Image(image: AssetImage('assets/images/img.png'),fit: BoxFit.cover,),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text('2022 design meetup'),
                      Text('By evento',style: TextStyle(color: Colors.grey[400]),),
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
              margin: EdgeInsets.only(left: 16,right: 16,bottom: 12),
              height: Get.height*0.1,
              width: Get.width*0.9,

              decoration: BoxDecoration(
                color: tilecolor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  child: Image(image: AssetImage('assets/images/img_1.png'),fit: BoxFit.cover,),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text('Game of throns'),
                      Text('By Netflix',style: TextStyle(color: Colors.grey[400]),),
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
              margin: EdgeInsets.only(left: 16,right: 16,bottom: 12),
              height: Get.height*0.1,
              width: Get.width*0.9,

              decoration: BoxDecoration(
                color: tilecolor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  child: Image(image: AssetImage('assets/images/img_2.png'),fit: BoxFit.cover,),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text('Awards show'),
                      Text('By Evento',style: TextStyle(color: Colors.grey[400]),),
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
            SizedBox(
              height: Get.height*0.03,

            ),
            Center(
              child: Text('See all',style: TextStyle(fontSize: 14),),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: floatingcolor,
        child: const Icon(Icons.add,size: 30,color: Colors.black,),
      ),
    );
  }
}
