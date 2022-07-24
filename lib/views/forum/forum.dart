import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/controller/nav_controller.dart';
import 'package:skilled_app/views/forum/create_post.dart';
import 'package:skilled_app/views/forum/post_tile.dart';
import 'package:skilled_app/views/forum/quiz_07.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../model/aboutmodel.dart';
import '../../utils/app_colors.dart';
import '../../widgets/hashir.dart';
import '../settings/notification.dart';

class Forum extends StatefulWidget {
  const Forum({Key? key, this.thread}) : super(key: key);

  @override
  _ForumState createState() => _ForumState();

  final String? thread;
}

class _ForumState extends State<Forum> {
  List<Post> post = [
    Post(
        favoriteImage: 'assets/icons/2107845.png',
        color: const Color(0xffFFE2DC),
        message: 'assets/img_13.png',
        number: '212',
        heart: 'assets/img_12.png',
        count: 538,
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
        favoriteImage: 'assets/icons/2107845.png',
        color: const Color(0xffFDE3CC),
        message: 'assets/img_13.png',
        number: '212',
        heart: 'assets/img_12.png',
        count: 341,
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
  bool isLike = false;
  bool isLikw1 = false;
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
        margin: EdgeInsets.only(
          right: 10,
          bottom: Responsive.isTablet(context) ? 32 : 4,
        ),
        height: screenheight * 0.07,
        width: screenwidth * 0.14,
        child: FloatingActionButton(
          onPressed: () {
            context.navigator.push<void>(
                SwipeablePageRoute(builder: (_) => const CreatePostOnForum()));
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (ctx) => CreatePostOnForum()));
          },
          backgroundColor: primaryColor,
          child: const Icon(
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
              Column(
                children: [
                  Container(
                    margin: Responsive.isTablet(context)
                        ? const EdgeInsets.only(right: 100)
                        : const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Image(
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
                                context.navigator.push<void>(SwipeablePageRoute(
                                    builder: (_) => Notifications()));
                                // Get.to(() => Notifications());
                              },
                              child: CircleAvatar(
                                radius: 22.0,
                                backgroundColor: Colors.grey[200],
                                child: const Image(
                                    image: AssetImage('assets/img_8.png'),
                                    width: 18),
                              ),
                            ),
                          ],
                        ),
                        if (Responsive.isTablet(context))
                          const SizedBox(
                            height: 32,
                          ),
                        const SizedBox(height: 12),
                        Container(
                          height: screenheight * 0.07,
                          width: screenwidth * 0.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22)),
                          child: TextFormField(
                            readOnly: true,
                            onTap: () {
                              if (Responsive.isTablet(context)) {
                                final NavController controller = Get.find();
                                controller.updateForumIndex(1);
                              } else {
                                context.navigator.push<void>(SwipeablePageRoute(
                                    builder: (_) => SearchOnForum()));
                                // Get.to(() => SearchOnForum());
                              }
                            },
                            style: const TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                              errorBorder: InputBorder.none,
                              errorStyle:
                                  const TextStyle(fontSize: 0, height: 0),
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
                              prefixIcon: const Icon(
                                Icons.search,
                                color: dividercolor,
                              ),
                              hintStyle: const TextStyle(
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
                              text: widget.thread ?? 'Popular Thread',
                              style: GoogleFonts.manrope(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        if (widget.thread == null)
                          ListView.builder(
                            itemCount:
                                isNextScreen == false ? 3 : threads.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (ctx, i) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: screenheight * 0.01,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isNextScreen = false;
                                        // Get.to(() => Forum(
                                        //       thread: threads[i],
                                        //     ));
                                      });
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
                                        const Icon(
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
                                  const Divider(
                                    thickness: 0.3,
                                    color: dividercolor,
                                  )
                                ],
                              );
                            },
                          ),
                        SizedBox(
                          height: screenheight * 0.02,
                        ),
                        if (widget.thread == null)
                          isNextScreen == false
                              ? InkWell(
                                  onTap: () {
                                    isNextScreen = true;
                                    setState(() {});
                                    // Get.to(() => SeeAllThread());
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: Responsive.isTablet(context)
                                        ? 38
                                        : screenheight * 0.06,
                                    width: Responsive.isTablet(context)
                                        ? 110
                                        : screenheight * 0.25,
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
                              : const SizedBox(),
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
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  if (widget.thread == null)
                                    myText(
                                      text: 'Top Posts',
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
                            Container(
                              width: double.infinity,
                              //height: screenheight*0.7,
                              //margin: EdgeInsets.only(top: 10),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: post.length,
                                  itemBuilder: (context, index) {
                                    return PostTile(
                                        post: post[index],
                                        screenheight: screenheight);
                                  }),
                            ),
                          ],
                        )
                      : const SizedBox(),
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

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }
}
