import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/controller/nav_controller.dart';
import 'package:skilled_app/views/forum/bottom_navi_for_replies.dart';
import 'package:skilled_app/views/forum/thread_detail.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../utils/app_colors.dart';
import '../../widgets/hashir.dart';
import '../settings/notification.dart';

class CommentSection extends StatefulWidget {
  CommentSection({
    Key? key,
    this.date,
    this.desc1,
    this.desc2,
    this.image,
    this.motion,
    this.name,
    this.ui,
    this.web,
    this.post,
  }) : super(key: key);
  List? post;
  String? image;
  String? name;
  String? date;
  String? ui;
  String? motion;
  String? web;
  String? desc1;
  String? desc2;

  @override
  State<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  TextEditingController commentController = TextEditingController();
  List addComment = [];
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          // margin: EdgeInsets.symmetric(horizontal: 15),
          child: Stack(
            children: [
              ListView(
                children: [
                  SizedBox(height: Responsive.isTablet(context) ? 22 : 10),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/image 29.png',
                              ),
                              height: 20,
                            ),
                            // SizedBox(
                            //   width: screenwidth * 0.5,
                            // ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: Responsive.isTablet(context)
                                      ? Get.width * 0.05
                                      : 0),
                              child: InkWell(
                                onTap: () {
                                  context.navigator.push<void>(
                                      SwipeablePageRoute(
                                          builder: (_) => Notifications()));
                                  // Get.to(() => Notifications());
                                },
                                child: CircleAvatar(
                                  radius: 22.0,
                                  backgroundColor: Colors.grey[200],
                                  child: Image(
                                      image: AssetImage('assets/img_8.png'),
                                      width: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (Responsive.isMobile(context))
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      bottom: Get.height * 0.02,
                                      top: Get.height * 0.01),
                                  padding: const EdgeInsets.all(12),
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: greyColor,
                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.all(2.5),
                                    child: Image.asset(
                                      'assets/back.png',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  if (Responsive.isTablet(context))
                    SizedBox(
                      height: Get.height * 0.1,
                    ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: Responsive.isTablet(context)
                            ? Get.width * 0.08
                            : 0),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 37,
                                width: 37,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(42),
                                  color: Colors.grey,
                                ),
                                child: Image(image: AssetImage(widget.image!)),
                              ),
                              SizedBox(
                                width: screenwidth * 0.04,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  myText(
                                      text: widget.name,
                                      style: GoogleFonts.manrope(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      )),
                                  myText(
                                      text: widget.date,
                                      style: GoogleFonts.manrope(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: dividercolor)),
                                ],
                              ),
                              Spacer(),
                              PopupMenuButton(
                                icon: Icon(Icons.more_vert,
                                    color: Colors.grey[700]),
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
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      context.navigator
                                          .push<void>(SwipeablePageRoute(
                                              builder: (_) => PopularThread(
                                                    title: 'UI/UIX',
                                                  )));
                                      // Get.to(
                                      //   () => PopularThread(
                                      //     title: 'UI/UIX',
                                      //   ),
                                      // );
                                      // print('object');
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      width: screenwidth * 0.21,
                                      height: screenheight * 0.04,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xffFFE2DC),
                                        // border: Border.all(
                                        //   color: backcolor,
                                        // ),
                                      ),
                                      child: Center(
                                        child: myText(
                                            text: widget.ui,
                                            style: GoogleFonts.manrope(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenwidth * 0.02,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      context.navigator
                                          .push<void>(SwipeablePageRoute(
                                              builder: (_) => PopularThread(
                                                    title: 'Motion',
                                                  )));
                                      // Get.to(() =>
                                      //     PopularThread(
                                      //       title: 'Motion',
                                      //     ));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      width: screenwidth * 0.21,
                                      height: screenheight * 0.04,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Color(0xffFDE3CC),
                                          border: Border.all(color: backcolor)),
                                      child:
                                          Center(child: Text(widget.motion!)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenwidth * 0.02,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      context.navigator
                                          .push<void>(SwipeablePageRoute(
                                              builder: (_) => PopularThread(
                                                    title: 'Web Design',
                                                  )));
                                      // Get.to(() =>
                                      //     PopularThread(
                                      //       title:
                                      //           'Web Design',
                                      //     ));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(left: 5),
                                      width: screenwidth * 0.3,
                                      height: screenheight * 0.045,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xffE4F0EE),
                                        // border: Border.all(
                                        //     color: backcolor),
                                      ),
                                      child: Center(child: Text(widget.web!)),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenheight * 0.02,
                              ),
                              myText(
                                  text: widget.desc1,
                                  style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  )),
                              SizedBox(
                                height: screenheight * 0.01,
                              ),
                              myText(
                                text: widget.desc2,
                                style: GoogleFonts.manrope(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: screenheight * 0.02,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  addComment.length == 0
                      ? SizedBox()
                      : Container(
                          margin: EdgeInsets.only(
                            right: Responsive.isTablet(context)
                                ? Get.width * 0.08
                                : 0,
                          ),
                          padding: EdgeInsets.only(
                              top: 15, left: 15, right: 15, bottom: 15),
                          color: Color(0xffF4F4F5),
                          width: Get.width,
                          child: Column(
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: addComment.length,
                                itemBuilder: (context, i) {
                                  return Column(
                                    children: [
                                      Row(
                                        children: [
                                          const CircleAvatar(
                                            radius: 17,
                                            backgroundImage: AssetImage(
                                              'assets/images/profilePic.png',
                                            ),
                                          ),
                                          SizedBox(
                                            width: Get.width * 0.02,
                                          ),
                                          const Text(
                                            'Martin Trek',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            width: Get.width * 0.02,
                                          ),
                                          const Text(
                                            'Monday at 2.00 AM',
                                            style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff8D9196),
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10,
                                        ),
                                        width: Get.width,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 15),
                                          child: Text(
                                            addComment[i],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: Get.width * 0.05,
                                          ),
                                          Text(
                                            'View Replies',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xffC4C4C4),
                                            ),
                                          ),
                                          Spacer(),
                                          InkWell(
                                            onTap: () {
                                              if (Responsive.isTablet(
                                                  context)) {
                                                final NavController controller =
                                                    Get.find();
                                                controller.updateForumIndex(4);
                                              } else {
                                                context.navigator.push<void>(
                                                  SwipeablePageRoute(
                                                    builder: (_) =>
                                                        BottomForReplies(
                                                      date: widget.date,
                                                      image: widget.image,
                                                      name: widget.name,
                                                      comment: addComment[i],
                                                    ),
                                                  ),
                                                );
                                              }
                                            },
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/reply.png',
                                                  fit: BoxFit.fill,
                                                  width: 30,
                                                  height: 20,
                                                ),
                                                const SizedBox(
                                                  width: 7,
                                                ),
                                                Text(
                                                  'Reply',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xffC4C4C4),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: Get.width * 0.05,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: Responsive.isTablet(context) ? 32 : 8,
                    right: Responsive.isTablet(context) ? Get.width * 0.08 : 0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5, left: 15, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffEAEAEA),
                      border: Border.all(color: Colors.transparent),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        const CircleAvatar(
                          radius: 22,
                          backgroundImage:
                              AssetImage('assets/images/settingImage.png'),
                        ),
                        Expanded(
                          child: TextFormField(
                            minLines: 1,
                            // maxLines: 10,
                            onFieldSubmitted: (val) {
                              commentController.text = val;
                              addComment.add(commentController.text);
                              setState(() {});
                              commentController.clear();
                            },
                            controller: commentController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              fillColor: Color(0xffEAEAEA),
                              filled: true,
                              hintText: 'Add a comment...',
                              hintStyle: TextStyle(
                                color: Color(0xffC4C4C4),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
