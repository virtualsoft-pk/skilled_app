import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/controller/nav_controller.dart';
import 'package:skilled_app/views/forum/bottom_navigation_for_comment.dart';
import 'package:skilled_app/views/forum/thread_detail.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../model/aboutmodel.dart';
import '../../utils/app_colors.dart';
import '../../widgets/hashir.dart';

class PostTile extends StatefulWidget {
  const PostTile({
    Key? key,
    required this.post,
    required this.screenheight,
  }) : super(key: key);

  final Post post;
  final double screenheight;

  @override
  State<PostTile> createState() => PostTileState();
}

class PostTileState extends State<PostTile> {
  var liked = false;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: const EdgeInsets.only(left: 15),
        child: Row(
          children: [
            Container(
              height: 37,
              width: 37,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(42),
                color: Colors.grey,
              ),
              child: Image(image: AssetImage('${widget.post.image}')),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myText(
                    text: widget.post.name,
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )),
                myText(
                    text: widget.post.date,
                    style: GoogleFonts.manrope(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: dividercolor)),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                // share();
              },
              icon: const Icon(Icons.more_vert, color: grey500),
            ),
            if (Responsive.isTablet(context))
              const SizedBox(
                width: 85,
              ),
            // PopupMenuButton(
            //   itemBuilder: (context) => [
            //     PopupMenuItem(
            //       child: Text("First"),
            //       value: 1,
            //     ),
            //     PopupMenuItem(
            //       child: Text("Second"),
            //       value: 2,
            //     )
            //   ],
            // )
          ],
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (Responsive.isTablet(context))
                  const SizedBox(
                    width: 36,
                  ),
                InkWell(
                  onTap: () {
                    context.navigator.push<void>(SwipeablePageRoute(
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffFFE2DC),
                      // border: Border.all(
                      //   color: backcolor,
                      // ),
                    ),
                    child: Center(
                      child: myText(
                          text: widget.post.design,
                          style: GoogleFonts.manrope(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    context.navigator.push<void>(SwipeablePageRoute(
                        builder: (_) => PopularThread(
                              title: 'Motion',
                            )));
                    // Get.to(() =>
                    //     PopularThread(
                    //       title: 'Motion',
                    //     ));
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffFDE3CC),
                        border: Border.all(color: backcolor)),
                    child: Center(child: Text(widget.post.dgn2)),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    context.navigator.push<void>(SwipeablePageRoute(
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
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffE4F0EE),
                      // border: Border.all(
                      //     color: backcolor),
                    ),
                    child: Center(child: Text(widget.post.design3)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            myText(
                text: widget.post.desc,
                style: GoogleFonts.manrope(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                )),
            const SizedBox(
              height: 4,
            ),
            myText(
                text: widget.post.desc2,
                style: GoogleFonts.manrope(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      liked = !liked;
                      if (liked) {
                        widget.post.count++;
                      } else {
                        widget.post.count--;
                      }
                    });
                  },
                  child: Icon(
                    liked ? Icons.favorite : Icons.favorite_outline,
                    color: liked ? Colors.red : Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(widget.post.count.toString()),
                const SizedBox(
                  width: 12,
                ),
                InkWell(
                  onTap: () {
                    if (Responsive.isTablet(context)) {
                      final NavController controller = Get.find();
                      controller.updateForumIndex(3);
                    } else {
                      context.navigator.push<void>(
                        SwipeablePageRoute(
                          builder: (_) => BottomForComment(
                            date: widget.post.date,
                            desc1: widget.post.desc,
                            desc2: widget.post.desc2,
                            image: widget.post.image,
                            motion: widget.post.dgn2,
                            name: widget.post.name,
                            ui: widget.post.design,
                            web: widget.post.design3,
                          ),
                        ),
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage(widget.post.message),
                      width: 17.5,
                      height: 15,
                    ),
                  ),
                ),
                myText(text: widget.post.number),
              ],
            ),
            // Row(
            //   children: [
            //     index == 0
            //         ? isLike == false
            //             ? InkWell(
            //                 onTap: () {
            //                   isLike = true;
            //                   setState(
            //                       () {});
            //                 },
            //                 child: Padding(
            //                   padding:
            //                       const EdgeInsets
            //                           .all(10),
            //                   child: Image(
            //                     image: AssetImage(
            //                         '${post[index].heart}'),
            //                     width: 20,
            //                     height: 18,
            //                     fit: BoxFit
            //                         .contain,
            //                   ),
            //                 ),
            //               )
            //             : InkWell(
            //                 onTap: () {
            //                   isLike =
            //                       false;
            //                   setState(
            //                       () {});
            //                 },
            //                 child: Padding(
            //                   padding:
            //                       const EdgeInsets
            //                           .all(10),
            //                   child: Image
            //                       .asset(
            //                     'assets/icons/2107845.png',
            //                     width: 20,
            //                     height: 18,
            //                     fit: BoxFit
            //                         .contain,
            //                   ),
            //                 ),
            //               )
            //         : isLikw1 == false
            //             ? InkWell(
            //                 onTap: () {
            //                   isLikw1 =
            //                       true;
            //                   setState(
            //                       () {});
            //                 },
            //                 child: Padding(
            //                   padding:
            //                       const EdgeInsets
            //                           .all(10),
            //                   child: Image(
            //                     image: AssetImage(
            //                         '${post[index].heart}'),
            //                     width: 20,
            //                     height: 18,
            //                     fit: BoxFit
            //                         .contain,
            //                   ),
            //                 ))
            //             : InkWell(
            //                 onTap: () {
            //                   isLikw1 =
            //                       false;
            //                   setState(
            //                       () {});
            //                 },
            //                 child: Padding(
            //                   padding:
            //                       const EdgeInsets
            //                           .all(10),
            //                   child: Image
            //                       .asset(
            //                     'assets/icons/2107845.png',
            //                     width: 20,
            //                     height: 18,
            //                     fit: BoxFit
            //                         .contain,
            //                   ),
            //                 ),
            //               ),
            //     myText(
            //         text:
            //             '${post[index].count}'),
            //     const SizedBox(
            //       width: 12,
            //     ),
            //     InkWell(
            //       onTap: () {},
            //       child: Padding(
            //         padding:
            //             const EdgeInsets
            //                 .all(10),
            //         child: Image(
            //           image: AssetImage(
            //               '${post[index].message}'),
            //           width: 17.5,
            //           height: 15,
            //         ),
            //       ),
            //     ),
            //     myText(
            //         text:
            //             '${post[index].number}'),
            //   ],
            // ),
            SizedBox(
              height: widget.screenheight * 0.03,
            ),
          ],
        ),
      ),
    ]);
  }
}
