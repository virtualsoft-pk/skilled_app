import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/views/forum/bottom_navi_for_replies.dart';
import 'package:skilled_app/views/forum/thread_detail.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'package:black_hole_flutter/black_hole_flutter.dart';
import '../../utils/app_colors.dart';
import '../../widgets/custom_widgets.dart';
import '../../widgets/hashir.dart';
import '../settings/notification.dart';

class CommentReplies extends StatefulWidget {
  CommentReplies({
    Key? key,
    this.date,
    this.image,
    this.name,
    this.comment,
  }) : super(key: key);
  String? image;
  String? name;
  String? date;
  String? comment;

  @override
  State<CommentReplies> createState() => _CommentRepliesState();
}

class _CommentRepliesState extends State<CommentReplies> {
  TextEditingController commentController = TextEditingController();
  List addComment = [];
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              ListView(
                children: [
                  const SizedBox(height: 10),
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
                            InkWell(
                              onTap: () {
                                // context.navigator.push<void>(SwipeablePageRoute(
                                //     builder: (_) => Notifications()));
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
                          ],
                        ),
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
                  Column(
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
                        padding:
                            EdgeInsets.only(left: 15, bottom: 20, right: 15),
                        child: Row(
                          children: [
                            Text(
                              widget.comment!,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                      addComment.length == 0
                          ? SizedBox()
                          : Container(
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
                                                vertical: 10,horizontal: 10),
                                            width: Get.width,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                                              child: Text(
                                                addComment[i],
                                              ),
                                            ),
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
                ],
              ),
              Align(
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
            ],
          ),
        ),
      ),
    );
  }
}
