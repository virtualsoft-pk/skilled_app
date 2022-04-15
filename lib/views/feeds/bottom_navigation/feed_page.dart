import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/feeds/bottom_navigation/company_profile.dart';
import 'package:skilled_app/views/feeds/bottom_navigation_4.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'package:black_hole_flutter/black_hole_flutter.dart';
import '../../../model/feed_model.dart';
import '../../../model/video_feed_model.dart';
import '../../eventCalander/in_person.dart';
import '../../settings/notification.dart';

class FeedPage extends StatefulWidget {
  FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  //  DateTime currentTime = DateTime.now();
  bool isLike = false;
  bool isLikw1 = false;
  int count1 = 200;
  int count2 = 971;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Container(
            // height: Get.height,
            color: backgroundColor,
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/image 29.png',
                        height: 20,
                      ),
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              context.navigator.push<void>(SwipeablePageRoute(
                                  builder: (_) => Notifications()));
                              // Get.to(() => Notifications());
                            },
                            child: Container(
                              padding: EdgeInsets.all(9),
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                color: greyColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset(
                                'assets/Notification.png',
                              ),
                            ),
                          ),
                          Positioned(
                            right: 9,
                            top: 7,
                            child: Container(
                              alignment: Alignment.center,
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: deepOrange,
                              ),
                              child: Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TabBar(
                    physics: NeverScrollableScrollPhysics(),
                    unselectedLabelColor: darkGrey,
                    labelColor: textColor,
                    unselectedLabelStyle: TextStyle(),
                    isScrollable: false,
                    labelPadding: EdgeInsets.only(bottom: 12),
                    indicatorColor: textColor,
                    tabs: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/layout.png',
                            height: 15,
                            width: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Feed',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/monitor.png',
                            height: 15,
                            width: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Video Feed',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      ListView.builder(
                        itemCount: feedModel.length,
                        shrinkWrap: true,
                        itemBuilder: (context, i) {
                          return Column(
                            children: [
                              const SizedBox(height: 15),
                              Container(
                                padding: EdgeInsets.only(left: 16),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        context.navigator.push<void>(
                                          SwipeablePageRoute(
                                            builder: (_) => BottomNavigation4(
                                              image: feedModel[i].profileImage!,
                                            ),
                                          ),
                                        );
                                      },
                                      child: CircleAvatar(
                                        radius: 22,
                                        backgroundColor: Colors.amber,
                                        backgroundImage: AssetImage(
                                          feedModel[i].profileImage!,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            context.navigator.push<void>(
                                              SwipeablePageRoute(
                                                builder: (_) =>
                                                    BottomNavigation4(
                                                  image: feedModel[i]
                                                      .profileImage!,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            feedModel[i].name!,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: textColor,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          feedModel[i].dateTime!.toString(),
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: lightGrey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    PopupMenuButton(
                                      itemBuilder: (context) => [
                                        PopupMenuItem(
                                          child: Text("Save for Later"),
                                          value: 1,
                                        ),
                                        PopupMenuItem(
                                          child: Text("Not Interested"),
                                          value: 2,
                                        ),
                                        PopupMenuItem(
                                          child: Text("Report"),
                                          value: 2,
                                        ),
                                        PopupMenuItem(
                                          child: Text("Share"),
                                          value: 2,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  children: [
                                    Text(
                                      feedModel[i].text!,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        context.navigator.push<void>(
                                            SwipeablePageRoute(
                                                builder: (_) => InPerson()));
                                        // Get.to(() => InPerson());
                                      },
                                      child: Container(
                                        height: 164,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                          ),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                feedModel[i].mainImage!),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 54,
                                      decoration: BoxDecoration(
                                        color: greyColor,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12),
                                        ),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              feedModel[i].website!,
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: websitegreyColor,
                                              ),
                                            ),
                                            Text(
                                              feedModel[i].websiteDesc!,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: textColor,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        i == 0
                                            ? isLike == false
                                                ? InkWell(
                                                    onTap: () {
                                                      isLike = true;
                                                      count1++;
                                                      setState(() {});
                                                    },
                                                    child: Image.asset(
                                                      'assets/heart.png',
                                                      height: 20,
                                                      width: 18,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  )
                                                : InkWell(
                                                    onTap: () {
                                                      isLike = false;
                                                      count1--;
                                                      setState(() {});
                                                    },
                                                    child: Image.asset(
                                                      'assets/icons/2107845.png',
                                                      height: 20,
                                                      width: 18,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  )
                                            : isLikw1 == false
                                                ? InkWell(
                                                    onTap: () {
                                                      isLikw1 = true;
                                                      count2++;
                                                      setState(() {});
                                                    },
                                                    child: Image.asset(
                                                      'assets/heart.png',
                                                      height: 20,
                                                      width: 18,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  )
                                                : InkWell(
                                                    onTap: () {
                                                      isLikw1 = false;
                                                      count2--;
                                                      setState(() {});
                                                    },
                                                    child: Image.asset(
                                                      'assets/icons/2107845.png',
                                                      height: 20,
                                                      width: 18,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                        SizedBox(
                                          width: 13,
                                        ),
                                        Text(
                                          i == 0
                                              ? count1.toString()
                                              : count2.toString(),
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 38,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Share.share('assets/share-2.png');
                                          },
                                          child: Image.asset(
                                            'assets/share-2.png',
                                            height: 20,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          feedModel[i].shares.toString(),
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Divider(
                                      color: dividerColor,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      PageView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: videoFeedModel.length,
                        itemBuilder: (context, i) {
                          return Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    // colorFilter: ColorFilter.mode(
                                    //   filterColor,
                                    //   BlendMode.darken,
                                    // ),
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      videoFeedModel[i].bgImage!,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 15,
                                                  right: 10,
                                                  bottom: 20),
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      videoFeedModel[i].image!),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  videoFeedModel[i].title!,
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: backgroundColor,
                                                  ),
                                                ),
                                                Text(
                                                  videoFeedModel[i]
                                                      .dateTime!
                                                      .toString(),
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: backgroundColor,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              right: 15, bottom: 20),
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    'assets/heart.png',
                                                    width: 25,
                                                    height: 25,
                                                    color: backgroundColor,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    '${videoFeedModel[i].likes.toString()}k',
                                                    style: TextStyle(
                                                      color: shareColor,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: Get.height * 0.02,
                                              ),
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    'assets/share-2.png',
                                                    width: 25,
                                                    height: 25,
                                                    color: backgroundColor,
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    videoFeedModel[i]
                                                        .shares
                                                        .toString(),
                                                    style: TextStyle(
                                                      color: shareColor,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: Get.height * 0.02,
                                              ),
                                              Image.asset(
                                                'assets/more-horizontal.png',
                                                width: 25,
                                                height: 25,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<VideoFeedModle> videoFeedModel = [
    VideoFeedModle(
      dateTime: DateTime.now(),
      image: 'assets/Ellipse 582.png',
      likes: 22.1,
      shares: 11,
      title: 'Skill Share',
      bgImage: 'assets/unsplash_t6pUyIvRWSY.png',
      pause: 'assets/pause.png',
    ),
    VideoFeedModle(
      dateTime: DateTime.now(),
      image: 'assets/Ellipse 582.png',
      likes: 22.1,
      shares: 11,
      title: 'Skill Share',
      bgImage: 'assets/unsplash_t6pUyIvRWSY.png',
      pause: 'assets/pause.png',
    ),
    VideoFeedModle(
      dateTime: DateTime.now(),
      image: 'assets/Ellipse 582.png',
      likes: 22.1,
      shares: 11,
      title: 'Skill Share',
      bgImage: 'assets/unsplash_t6pUyIvRWSY.png',
      pause: 'assets/pause.png',
    ),
    VideoFeedModle(
      dateTime: DateTime.now(),
      image: 'assets/Ellipse 582.png',
      likes: 22.1,
      shares: 11,
      title: 'Skill Share',
      bgImage: 'assets/unsplash_t6pUyIvRWSY.png',
      pause: 'assets/pause.png',
    )
  ];
}
