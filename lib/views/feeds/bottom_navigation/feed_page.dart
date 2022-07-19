import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
// import 'package:share_plus/share_plus.dart';

import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/feeds/bottom_navigation/company_profile.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../../model/feed_model.dart';
import '../../../model/video_feed_model.dart';
import '../../eventCalander/in_person.dart';
import '../../settings/notification.dart';
import '../../settings/tabbardata.dart';

class FeedPage extends StatefulWidget {
  FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: Responsive.isTablet(context) ? 24 : 12,
            ),
            _Header(),
            SizedBox(
              height: Responsive.isTablet(context) ? 24 : 12,
            ),
            Expanded(
              child: Row(
                children: [
                  _TabBar(),
                  if (Responsive.isTablet(context)) _FeedPageSideBar()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FeedPageSideBar extends StatelessWidget {
  const _FeedPageSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 42, left: 12),
      child: SizedBox(
          width: Get.width * 0.25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CompanyProfileMini(),
              const SizedBox(
                height: 18,
              ),
              Text(
                'Recent Activities',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 18,
              ),
              // notification example data
              TabbarData(),
            ],
          )),
    );
  }
}

class _CompanyProfileMini extends StatelessWidget {
  const _CompanyProfileMini({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: Colors.amber,
          backgroundImage: AssetImage(
            'assets/images/skilldlogo.jpg',
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                CompanyProfile(
                  image: 'assets/images/skilldlogo.jpg',
                );
              },
              child: Text(
                'Skill Share',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),
            ),
            Text(
              'contact@skillshare.com',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: lightGrey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _TabBar extends StatefulWidget {
  const _TabBar({Key? key}) : super(key: key);

  @override
  State<_TabBar> createState() => _TabBarState();
}

class _TabBarState extends State<_TabBar> {
  //  DateTime currentTime = DateTime.now();
  bool isLike = false;

  bool isLikw1 = false;

  int count1 = 200;

  int count2 = 971;

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }

  //For Feed
  List _data = [];

  Future _refreshData() async {
    await Future.delayed(Duration(seconds: 3));
    feedModel.shuffle();
    setState(() {});
  }

  //For Video Feed
  List _videoData = [];

  Future _refreshVideoData() async {
    await Future.delayed(Duration(seconds: 3));
    videoFeedModel.shuffle();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TabBar(
                physics: NeverScrollableScrollPhysics(),
                unselectedLabelColor: darkGrey,
                indicatorWeight: Responsive.isTablet(context) ? 1.2 : 2,
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
                        height: Responsive.isTablet(context) ? 22 : 15,
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
                        height: Responsive.isTablet(context) ? 22 : 15,
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
                  RefreshIndicator(
                    onRefresh: _refreshData,
                    child: ListView.builder(
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
                                          builder: (_) => CompanyProfile(
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          context.navigator.push<void>(
                                            SwipeablePageRoute(
                                              builder: (_) => CompanyProfile(
                                                image:
                                                    feedModel[i].profileImage!,
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
                                        "Monday at 2.00 AM",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: lightGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),

                                  IconButton(
                                    onPressed: () {
                                      share();
                                    },
                                    icon: Icon(Icons.more_vert, color: grey500),
                                  ),

                                  // PopupMenuButton(
                                  //   itemBuilder: (context) => [
                                  //     PopupMenuItem(
                                  //       child: Text("Save for Later"),
                                  //       value: 1,
                                  //     ),
                                  //     PopupMenuItem(
                                  //       child: Text("Not Interested"),
                                  //       value: 2,
                                  //     ),
                                  //     PopupMenuItem(
                                  //       child: Text("Report"),
                                  //       value: 2,
                                  //     ),
                                  //     PopupMenuItem(
                                  //       child: Text("Share"),
                                  //       value: 2,
                                  //     )
                                  //   ],
                                  // ),
                                ],
                              ),
                            ),
                            if (Responsive.isMobile(context))
                              SizedBox(
                                height: 12,
                              ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                children: [
                                  if (Responsive.isMobile(context))
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
                                      height: Responsive.isTablet(context)
                                          ? Get.height * 0.55
                                          : 164,
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                              Responsive.isTablet(context)
                                                  ? 6
                                                  : 12),
                                          topRight: Radius.circular(
                                              Responsive.isTablet(context)
                                                  ? 6
                                                  : 12),
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
                                      color: Responsive.isTablet(context)
                                          ? Colors.white
                                          : greyColor,
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
                                              color:
                                                  Responsive.isTablet(context)
                                                      ? Color(0xFF497BC3)
                                                      : websitegreyColor,
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
                                                  child: Padding(
                                                    padding: EdgeInsets.all(8),
                                                    child: Image.asset(
                                                      'assets/heart.png',
                                                      height: 20,
                                                      width: 18,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                )
                                              : InkWell(
                                                  onTap: () {
                                                    isLike = false;
                                                    count1--;
                                                    setState(() {});
                                                  },
                                                  child: Padding(
                                                    padding: EdgeInsets.all(8),
                                                    child: Image.asset(
                                                      'assets/icons/2107845.png',
                                                      height: 20,
                                                      width: 18,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                )
                                          : isLikw1 == false
                                              ? InkWell(
                                                  onTap: () {
                                                    isLikw1 = true;
                                                    count2++;
                                                    setState(() {});
                                                  },
                                                  child: Padding(
                                                    padding: EdgeInsets.all(8),
                                                    child: Image.asset(
                                                      'assets/heart.png',
                                                      height: 20,
                                                      width: 18,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                )
                                              : InkWell(
                                                  onTap: () {
                                                    isLikw1 = false;
                                                    count2--;
                                                    setState(() {});
                                                  },
                                                  child: Padding(
                                                    padding: EdgeInsets.all(8),
                                                    child: Image.asset(
                                                      'assets/icons/2107845.png',
                                                      height: 20,
                                                      width: 18,
                                                      fit: BoxFit.contain,
                                                    ),
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

                                      // IconButton(onPressed: (){}, icon: Icon(
                                      //   Icons.share
                                      // )),

                                      InkWell(
                                        onTap: () {
                                          share();
                                          //Share.share('assets/share-2.png');
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(8),
                                          child: Image.asset(
                                            'assets/share-2.png',
                                            height: 22,
                                          ),
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
                  ),
                  RefreshIndicator(
                    onRefresh: _refreshVideoData,
                    child: PageView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: videoFeedModel.length,
                      itemBuilder: (context, i) {
                        return Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                    filterColor,
                                    BlendMode.darken,
                                  ),
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
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Get.to(() => CompanyProfile(
                                                image: videoFeedModel[i].image!,
                                              ));
                                        },
                                        child: Row(
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
                                                  "Monday at 2.00 AM",
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
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: 15, bottom: 20),
                                        child: Column(
                                          children: [
                                            Column(
                                              children: [
                                                i == 0
                                                    ? isLike == false
                                                        ? InkWell(
                                                            onTap: () {
                                                              isLike = true;
                                                              count1++;
                                                              videoFeedModel[i]
                                                                      .likes =
                                                                  videoFeedModel[
                                                                              i]
                                                                          .likes! +
                                                                      1;
                                                              setState(() {});
                                                            },
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8),
                                                              child:
                                                                  Image.asset(
                                                                'assets/heart.png',
                                                                color:
                                                                    backgroundColor,
                                                                height: 25,
                                                                width: 25,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          )
                                                        : InkWell(
                                                            onTap: () {
                                                              isLike = false;
                                                              count1--;
                                                              videoFeedModel[i]
                                                                      .likes =
                                                                  videoFeedModel[
                                                                              i]
                                                                          .likes! -
                                                                      1;
                                                              setState(() {});
                                                            },
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8),
                                                              child:
                                                                  Image.asset(
                                                                'assets/icons/2107845.png',
                                                                height: 25,
                                                                width: 25,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          )
                                                    : isLikw1 == false
                                                        ? InkWell(
                                                            onTap: () {
                                                              isLikw1 = true;
                                                              count2++;
                                                              videoFeedModel[i]
                                                                      .likes =
                                                                  videoFeedModel[
                                                                              i]
                                                                          .likes! +
                                                                      1;
                                                              setState(() {});
                                                            },
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8),
                                                              child:
                                                                  Image.asset(
                                                                'assets/heart.png',
                                                                height: 25,
                                                                width: 25,
                                                                color:
                                                                    backgroundColor,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          )
                                                        : InkWell(
                                                            onTap: () {
                                                              isLikw1 = false;
                                                              count2--;
                                                              videoFeedModel[i]
                                                                      .likes =
                                                                  videoFeedModel[
                                                                              i]
                                                                          .likes! -
                                                                      1;
                                                              setState(() {});
                                                            },
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8),
                                                              child:
                                                                  Image.asset(
                                                                'assets/icons/2107845.png',
                                                                height: 25,
                                                                width: 25,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),

                                                // Image.asset(
                                                //   'assets/heart.png',
                                                //   width: 25,
                                                //   height: 25,
                                                //   color: backgroundColor,
                                                // ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  '${videoFeedModel[i].likes.toString()}k',
                                                  style: TextStyle(
                                                    color: shareColor,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.02,
                                            ),
                                            Column(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    print("Called");
                                                    share();
                                                    //Share.share('assets/share-2.png');
                                                  },
                                                  child: Padding(
                                                    padding: EdgeInsets.all(8),
                                                    child: Image.asset(
                                                      'assets/share-2.png',
                                                      color: Colors.white,
                                                      height: 25,
                                                    ),
                                                  ),
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
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: Get.height * 0.02,
                                            ),
                                            // Image.asset(
                                            //   'assets/more-horizontal.png',
                                            //   width: 25,
                                            //   height: 25,
                                            // )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: CircleAvatar(
                                  radius: 36,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.play_arrow,
                                      color: Colors.black)),
                            ),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
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
      bgImage: 'assets/images/onboard5.png',
      pause: 'assets/pause.png',
    ),
    VideoFeedModle(
      dateTime: DateTime.now(),
      image: 'assets/Ellipse 582.png',
      likes: 22.1,
      shares: 11,
      title: 'Skill Share',
      bgImage: 'assets/images/skilldlogo.jpg',
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

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/image 29.png',
            height: 20,
          ),
          Padding(
            padding:
                EdgeInsets.only(right: Responsive.isTablet(context) ? 38 : 0),
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    context.navigator.push<void>(
                        SwipeablePageRoute(builder: (_) => Notifications()));
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
            ),
          )
        ],
      ),
    );
  }
}
