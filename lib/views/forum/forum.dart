import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/views/forum/quiz_06.dart';
import 'package:skilled_app/views/forum/quiz_07.dart';
import 'package:skilled_app/views/forum/see_all.dart';
import 'package:skilled_app/views/forum/thread_detail.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

import '../../model/aboutmodel.dart';
import '../../utils/app_colors.dart';
import '../../widgets/hashir.dart';
import '../settings/notification.dart';
import 'bottom_navigation2.dart';

class Forum extends StatefulWidget {
  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  List<Post> post = [
    Post(
        color: Color(0xffFFE2DC),
        message: 'assets/img_13.png',
        number: '212',
        heart: 'assets/img_12.png',
        count: '2.1k',
        design3: 'web design',
        dgn2: 'Motion',
        image: 'assets/img_10.png',
        name: 'Hashir shah',
        date: 'Monday at 2:00AM',
        design: 'UI/UIX',
        desc: '13 best Skillshare classes for designers and artists?',
        desc2:
            'We’ve noticed a bunch of talented designers and illustrators jumping onto Skillshare to... Read more'),
    Post(
        color: Color(0xffFDE3CC),
        message: 'assets/img_13.png',
        number: '212',
        heart: 'assets/img_12.png',
        count: '2.1k',
        design3: 'web design',
        dgn2: 'Motion',
        image: 'assets/img_10.png',
        name: 'Hashir shah',
        date: 'Monday at 2:00AM',
        design: 'UI/UIX',
        desc: '13 best Skillshare classes for designers and artists?',
        desc2:
            'We’ve noticed a bunch of talented designers and illustrators jumping onto Skillshare to... Read more'),
    Post(
        color: Color(0xffE4F0EE),
        message: 'assets/img_13.png',
        number: '212',
        heart: 'assets/img_12.png',
        count: '2.1k',
        design3: 'web design',
        dgn2: 'Motion',
        image: 'assets/img_10.png',
        name: 'Hashir shah',
        date: 'Monday at 2:00AM',
        design: 'UI/UIX',
        desc: '13 best Skillshare classes for designers and artists?',
        desc2:
            'We’ve noticed a bunch of talented designers and illustrators jumping onto Skillshare to... Read more'),
  ];
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
  bool isNextScreen = false;
  bool isNextScreen1 = false;
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
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
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
                                      image: AssetImage('assets/img_8.png'),
                                      width: 18),
                                ),
                              ),
                            ],
                          ),

                          // Align(
                          //     alignment: Alignment.topLeft,
                          //     child: customBackButton(() {})),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: screenheight * 0.07,
                            width: screenwidth * 0.9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22)),
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
                                hintText: ('Search in forum'),
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
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListView.builder(
                            itemCount:
                                isNextScreen == false ? 3 : threads.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (ctx, i) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: screenheight * 0.01,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.off(
                                        () => BottomNavigation2(
                                          title: threads[i],
                                        ),
                                      );
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                          ),
                          // SizedBox(
                          //   height: screenheight * 0.02,
                          // ),
                          // Row(
                          //   children: [
                          //     myText(
                          //       text: 'Popular Thread',
                          //       style: GoogleFonts.manrope(
                          //         fontSize: 18,
                          //         fontWeight: FontWeight.w700,
                          //       ),
                          //     )
                          //   ],
                          // ),
                          // SizedBox(
                          //   height: screenheight * 0.02,
                          // ),
                          // InkWell(
                          //   onTap: () {
                          //     Get.to(() => PopularThread('A-Level Options '));
                          //   },
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       myText(
                          //           text: 'A-Level Options ',
                          //           style: GoogleFonts.manrope(
                          //             fontSize: 16,
                          //             fontWeight: FontWeight.w500,
                          //           )),
                          //       Icon(
                          //         Icons.arrow_forward_ios,
                          //         size: 15,
                          //         color: arrow,
                          //       )
                          //     ],
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: screenheight * 0.01,
                          // ),
                          // Divider(
                          //   thickness: 0.3,
                          //   color: dividercolor,
                          // ),
                          // SizedBox(
                          //   height: screenheight * 0.02,
                          // ),
                          // InkWell(
                          //   onTap: () {
                          //     Get.to(() => PopularThread('Computer Science'));
                          //   },
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       myText(
                          //           text: 'Computer Science',
                          //           style: GoogleFonts.manrope(
                          //             fontSize: 16,
                          //             fontWeight: FontWeight.w500,
                          //           )),
                          //       Icon(
                          //         Icons.arrow_forward_ios,
                          //         size: 15,
                          //         color: arrow,
                          //       )
                          //     ],
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: screenheight * 0.01,
                          // ),
                          // Divider(
                          //   thickness: 0.3,
                          //   color: dividercolor,
                          // ),
                          // SizedBox(
                          //   height: screenheight * 0.02,
                          // ),
                          // InkWell(
                          //   onTap: () {
                          //     Get.to(() => PopularThread('Workshops'));
                          //   },
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       myText(
                          //           text: 'Workshops',
                          //           style: GoogleFonts.manrope(
                          //             fontSize: 16,
                          //             fontWeight: FontWeight.w500,
                          //           )),
                          //       Icon(
                          //         Icons.arrow_forward_ios,
                          //         size: 15,
                          //         color: arrow,
                          //       )
                          //     ],
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: screenheight * 0.01,
                          // ),
                          // Divider(
                          //   thickness: 0.3,
                          //   color: dividercolor,
                          // ),
                          SizedBox(
                            height: screenheight * 0.02,
                          ),
                          isNextScreen == false
                              ? InkWell(
                                  onTap: () {
                                    isNextScreen = true;
                                    setState(() {});
                                    // Get.to(() => SeeAllThread());
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: screenheight * 0.06,
                                    width: screenwidth * 0.25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white,
                                        border: Border.all(color: greycolor)),
                                    child: myText(
                                      text: 'See more',
                                      style: GoogleFonts.manrope(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: screenheight * 0.01,
                    ),

                    isNextScreen == false
                        ? Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    myText(
                                      text: 'Top Post',
                                      style: GoogleFonts.manrope(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: screenheight * 0.02,
                              ),
                              SizedBox(
                                height: screenheight * 0.02,
                              ),
                              Container(
                                width: double.infinity,
                                //height: screenheight*0.7,
                                //margin: EdgeInsets.only(top: 10),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: post.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 15),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 37,
                                                  width: 37,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            42),
                                                    color: Colors.grey,
                                                  ),
                                                  child: Image(
                                                      image: AssetImage(
                                                          '${post[index].image}')),
                                                ),
                                                SizedBox(
                                                  width: screenwidth * 0.04,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    myText(
                                                        text:
                                                            '${post[index].name}',
                                                        style:
                                                            GoogleFonts.manrope(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        )),
                                                    myText(
                                                        text:
                                                            '${post[index].date}',
                                                        style: GoogleFonts.manrope(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                dividercolor)),
                                                  ],
                                                ),
                                                Spacer(),
                                                PopupMenuButton(
                                                  itemBuilder: (context) => [
                                                    PopupMenuItem(
                                                      child: Text("First"),
                                                      value: 1,
                                                    ),
                                                    PopupMenuItem(
                                                      child: Text("Second"),
                                                      value: 2,
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: screenheight * 0.02,
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                              horizontal: 15,
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        Get.to(() =>
                                                            PopularThread(
                                                              title: 'UI/UIX',
                                                            ));
                                                      },
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            left: 5),
                                                        width:
                                                            screenwidth * 0.21,
                                                        height:
                                                            screenheight * 0.04,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          color:
                                                              Color(0xffFFE2DC),
                                                          // border: Border.all(
                                                          //   color: backcolor,
                                                          // ),
                                                        ),
                                                        child: Center(
                                                          child: myText(
                                                              text:
                                                                  '${post[index].design}',
                                                              style: GoogleFonts.manrope(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: screenwidth * 0.02,
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Get.to(
                                                          () => PopularThread(
                                                            title: 'Motion',
                                                          ),
                                                        );
                                                      },
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            left: 5),
                                                        width:
                                                            screenwidth * 0.21,
                                                        height:
                                                            screenheight * 0.04,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                            color: Color(
                                                                0xffFDE3CC),
                                                            border: Border.all(
                                                                color:
                                                                    backcolor)),
                                                        child: Center(
                                                            child: Text(
                                                                '${post[index].dgn2}')),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: screenwidth * 0.02,
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Get.to(
                                                          () => PopularThread(
                                                            title: 'Web Design',
                                                          ),
                                                        );
                                                      },
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            left: 5),
                                                        width:
                                                            screenwidth * 0.3,
                                                        height: screenheight *
                                                            0.045,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                          color:
                                                              Color(0xffE4F0EE),
                                                          // border: Border.all(
                                                          //     color: backcolor),
                                                        ),
                                                        child: Center(
                                                            child: Text(
                                                                '${post[index].design3}')),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: screenheight * 0.02,
                                                ),
                                                myText(
                                                    text: '${post[index].desc}',
                                                    style: GoogleFonts.manrope(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    )),
                                                SizedBox(
                                                  height: screenheight * 0.01,
                                                ),
                                                myText(
                                                    text:
                                                        '${post[index].desc2}',
                                                    style: GoogleFonts.manrope(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    )),
                                                SizedBox(
                                                  height: screenheight * 0.02,
                                                ),
                                                Row(
                                                  children: [
                                                    Image(
                                                      image: AssetImage(
                                                          '${post[index].heart}'),
                                                      width: 17.5,
                                                      height: 15,
                                                    ),
                                                    SizedBox(
                                                      width: screenwidth * 0.02,
                                                    ),
                                                    myText(
                                                        text:
                                                            '${post[index].count}'),
                                                    SizedBox(
                                                      width: screenwidth * 0.04,
                                                    ),
                                                    Image(
                                                      image: AssetImage(
                                                          '${post[index].message}'),
                                                      width: 17.5,
                                                      height: 15,
                                                    ),
                                                    SizedBox(
                                                      width: screenwidth * 0.02,
                                                    ),
                                                    myText(
                                                        text:
                                                            '${post[index].number}'),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: screenheight * 0.03,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ]);
                                  },
                                ),
                              ),
                            ],
                          )
                        : SizedBox(),
                    // Stack(
                    //   children:
                    //   Positioned(
                    //     right: 20,
                    //     child:  InkWell(
                    //       onTap: (){
                    //         Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>Quiz_06()));
                    //       },
                    //       child: Container(
                    //           height: screenheight*0.07,
                    //           width: screenwidth*0.14,
                    //           decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(42),
                    //               color: AppColors.primaryColor),
                    //           child: Icon(Icons.add)
                    //       ),
                    //     ),,
                    //   )
                    //
                    // )
                  ],
                ),
              )
              // Container(
              //     margin: const EdgeInsets.symmetric(horizontal: 16),
              //     child: Column(
              //       children: [
              //         SizedBox(height: screenheight * 0.02),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Image(
              //               image: AssetImage(
              //                 'assets/img_7.png',
              //               ),
              //               width: screenwidth * 0.28,
              //               height: 18,
              //             ),
              //             // SizedBox(
              //             //   width: screenwidth * 0.5,
              //             // ),
              //             InkWell(
              //               onTap: () {
              //                 Get.to(() => Notifications());
              //               },
              //               child: CircleAvatar(
              //                 radius: 22.0,
              //                 backgroundColor: Colors.grey[200],
              //                 child: Image(
              //                     image: AssetImage('assets/img_8.png'),
              //                     width: 18),
              //               ),
              //             ),
              //           ],
              //         ),
              //         Align(
              //           alignment: Alignment.topLeft,
              //           child: customBackButton(() {
              //             isNextScreen = false;
              //             setState(() {});
              //           }),
              //         ),
              //         Container(
              //           height: screenheight * 0.07,
              //           width: screenwidth * 0.9,
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(22)),
              //           child: TextFormField(
              //             readOnly: true,
              //             onTap: () {
              //               Get.to(() => SearchOnForum());
              //             },
              //             style: TextStyle(color: Colors.grey),
              //             decoration: InputDecoration(
              //               errorBorder: InputBorder.none,
              //               errorStyle: TextStyle(fontSize: 0, height: 0),
              //               focusedErrorBorder: InputBorder.none,
              //               fillColor: Colors.deepOrangeAccent[2],
              //               filled: true,
              //               enabledBorder: UnderlineInputBorder(
              //                   borderSide: BorderSide.none,
              //                   borderRadius: BorderRadius.circular(12)),
              //               focusedBorder: UnderlineInputBorder(
              //                   borderSide: BorderSide.none,
              //                   borderRadius: BorderRadius.circular(12)),
              //               border: UnderlineInputBorder(
              //                   borderSide: BorderSide.none,
              //                   borderRadius: BorderRadius.circular(12)),
              //               hintText: ('Search threads'),
              //               prefixIcon: Icon(
              //                 Icons.search,
              //                 color: dividercolor,
              //               ),
              //               hintStyle: TextStyle(
              //                   color: Colors.grey,
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w500),
              //             ),
              //           ),
              //         ),
              //         SizedBox(
              //           height: screenheight * 0.02,
              //         ),
              //         Row(
              //           children: [
              //             myText(
              //               text: 'Popular Thread',
              //               style: GoogleFonts.manrope(
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.w700,
              //               ),
              //             )
              //           ],
              //         ),
              //         SizedBox(
              //           height: screenheight * 0.01,
              //         ),
              //         ListView.builder(
              //           itemCount: threads.length,
              //           shrinkWrap: true,
              //           physics: NeverScrollableScrollPhysics(),
              //           itemBuilder: (ctx, i) {
              //             return Column(
              //               children: [
              //                 SizedBox(
              //                   height: screenheight * 0.01,
              //                 ),
              //                 InkWell(
              //                   onTap: () {
              //                     Get.to(
              //                       () => BottomNavigation2(
              //                         title: threads[i],
              //                       ),
              //                     );
              //                   },
              //                   child: Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       myText(
              //                           text: threads[i],
              //                           style: GoogleFonts.manrope(
              //                             fontSize: 16,
              //                             fontWeight: FontWeight.w500,
              //                           )),
              //                       Icon(
              //                         Icons.arrow_forward_ios,
              //                         size: 15,
              //                         color: arrow,
              //                       )
              //                     ],
              //                   ),
              //                 ),
              //                 SizedBox(
              //                   height: screenheight * 0.01,
              //                 ),
              //                 Divider(
              //                   thickness: 0.3,
              //                   color: dividercolor,
              //                 )
              //               ],
              //             );
              //           },
              //         ),
              //       ],
              //     ),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
