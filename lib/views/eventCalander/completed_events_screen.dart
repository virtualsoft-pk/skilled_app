import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/widgets/custom_button.dart';

class CompleteEvent extends StatefulWidget {
  const CompleteEvent({Key? key}) : super(key: key);

  @override
  _CompleteEventState createState() => _CompleteEventState();
}

class _CompleteEventState extends State<CompleteEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 12),
              height: 95,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: Get.width,
              decoration: BoxDecoration(
                color: tilecolor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Image(
                      image: AssetImage('assets/images/img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('2022 meetup'),
                      Text(
                        'By Likee',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 149,
                        height: 25,
                        decoration: BoxDecoration(
                          color: compltedcolor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Completed 8 days ago',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          Showbottomsheet();
                        },
                      );
                    },
                    minWidth: 88,
                    height: 36,
                    //color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: buttoncolor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text('Feedback'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 12),
              height: 95,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: Get.width,
              decoration: BoxDecoration(
                color: tilecolor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Image(
                      image: AssetImage('assets/images/img_1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Game OF thrones',
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'By Netflix',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 149,
                        height: 25,
                        decoration: BoxDecoration(
                          color: compltedcolor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Completed 5 days ago',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          Showbottomsheet();
                        },
                      );
                    },
                    minWidth: 88,
                    height: 36,
                    //color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: buttoncolor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text('Feedback'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 12),
              height: 95,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: Get.width,
              decoration: BoxDecoration(
                color: tilecolor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Image(
                      image: AssetImage('assets/images/img_2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Award show'),
                      Text(
                        'By Evento',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 149,
                        height: 25,
                        decoration: BoxDecoration(
                          color: compltedcolor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Completed 8 days ago',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          Showbottomsheet();
                        },
                      );
                    },
                    minWidth: 88,
                    height: 36,
                    //color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: buttoncolor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text('Feedback'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Showbottomsheet() {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(12),
          ),
        ),
        builder: (context) => Container(
              // padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 63, right: 61, top: 49),
                    child: Container(
                      child: Text(
                        'Rate your experience',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 70,
                    width: 358,
                    padding: const EdgeInsets.only(
                      left: 8,
                      right: 9,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'How much did you enjoy this experience?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Select an appropriate rating below.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 17.68,
                  ),
                  Container(
                    child: RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Color(0xffDC8436),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 20),
                    child: MaterialButton(
                        onPressed: () {
                          Get.back();

                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    title: const Text(
                                      'Thank you for your\nfeedback',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    actions: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Column(
                                          children: [
                                            Divider(),
                                            SizedBox(
                                              height: Get.height * 0.02,
                                            ),
                                            Text(
                                              'Your rating has been submitted for the company to view.',
                                              style: TextStyle(
                                                color: Color(0xff333943),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.06,
                                            ),
                                            CustomButton(
                                              funct: () {
                                                Get.back();
                                              },
                                              text: 'BACK TO SKILLD',
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ]);
                              });
                          // Get.defaultDialog(
                          //   titleStyle: TextStyle(
                          //     fontSize: 18,
                          //     fontWeight: FontWeight.w700,
                          //   ),
                          //   title: 'Thank you for your feedback',
                          //   content: Column(
                          //     children: [
                          //       Divider(),
                          //       SizedBox(
                          //         height: Get.height * 0.02,
                          //       ),
                          //       Text(
                          //         'Your rating has been submitted for the company to view.',
                          //         style: TextStyle(
                          //           color: Color(0xff333943),
                          //           fontSize: 12,
                          //           fontWeight: FontWeight.w500,
                          //         ),
                          //         textAlign: TextAlign.center,
                          //       ),
                          //       SizedBox(
                          //         height: Get.height * 0.06,
                          //       ),
                          //       CustomButton(
                          //         funct: () {},
                          //         text: 'Back To Skilled',
                          //       ),
                          //     ],
                          //   ),
                          // );

                          //  Navigator.push(context, MaterialPageRoute(builder: (ctx)=> events_screen(),),);
                        },
                        minWidth: 343,
                        height: 62,
                        color: buttoncolor,
                        visualDensity: VisualDensity.compact,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                ],
              ),
            ));
  }
}
