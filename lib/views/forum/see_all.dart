import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/views/forum/quiz_06.dart';
import 'package:skilled_app/views/forum/quiz_07.dart';
import 'package:skilled_app/views/forum/thread_detail.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

import '../../utils/app_colors.dart';
import '../../widgets/hashir.dart';
import '../settings/notification.dart';

class SeeAllThread extends StatefulWidget {
  @override
  _SeeAllThreadState createState() => _SeeAllThreadState();
}

class _SeeAllThreadState extends State<SeeAllThread> {
  List<String> threads = [
    'A-Level Options',
    'Computer Science ',
    'Workshops',
    'UX Design',
    'Girls in STEM ',
    'UK Apprentiships ',
    '3D Modelling',
    'Programming ',
    'Digital Art',
    'A-Level Options ',
    'Graphic Design ',
    'Product Design'
  ];

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.only(right: 10),
        height: screenheight * 0.07,
        width: screenwidth * 0.14,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => CreatePostOnForum()));
          },
          backgroundColor: primaryColor,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: screenheight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage(
                      'assets/img_7.png',
                    ),
                    width: screenwidth * 0.28,
                    height: 18,
                  ),
                  // SizedBox(
                  //   width: screenwidth * 0.5,
                  // ),
                  InkWell(
                    onTap: () {
                      Get.to(() => Notifications());
                    },
                    child: CircleAvatar(
                      radius: 22.0,
                      backgroundColor: Colors.grey[200],
                      child: Image(
                          image: AssetImage('assets/img_8.png'), width: 18),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: customBackButton(),
              ),
              Container(
                height: screenheight * 0.07,
                width: screenwidth * 0.9,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(22)),
                child: TextFormField(
                  readOnly: true,
                  onTap: () {
                    Get.to(() => SearchOnForum());
                  },
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    errorBorder: InputBorder.none,
                    errorStyle: TextStyle(fontSize: 0, height: 0),
                    focusedErrorBorder: InputBorder.none,
                    fillColor: Colors.deepOrangeAccent[2],
                    filled: true,
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    hintText: ('Search threads'),
                    prefixIcon: Icon(
                      Icons.search,
                      color: dividercolor,
                    ),
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: screenheight * 0.02,
              ),
              Row(
                children: [
                  myText(
                      text: 'Popular Thread',
                      style: GoogleFonts.manrope(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ))
                ],
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              ListView.builder(
                itemBuilder: (ctx, i) {
                  return Column(
                    children: [
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => PopularThread(
                                title: threads[i],
                              ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            myText(
                                text: threads[i],
                                style: GoogleFonts.manrope(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: arrow,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      Divider(
                        thickness: 0.3,
                        color: dividercolor,
                      )
                    ],
                  );
                },
                itemCount: threads.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
