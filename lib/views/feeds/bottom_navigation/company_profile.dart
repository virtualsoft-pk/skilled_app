import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../forum/bottom_navigation_3.dart';
import '../../responsive.dart';

class CompanyProfile extends StatefulWidget {
  CompanyProfile({Key? key, this.image}) : super(key: key);
  String? image;

  @override
  State<CompanyProfile> createState() => _CompanyProfileState();
}

class _CompanyProfileState extends State<CompanyProfile> {
  List<String> imgs = [
    'assets/images/Mask group (1).png',
    'assets/images/Mask group (2).png',
    'assets/images/Mask group (3).png',
    'assets/images/Mask group (4).png',
    'assets/images/Mask group (5).png',
    'assets/images/Mask group (6).png',
  ];

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: tabAppBar(),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Responsive.isTablet(context)
                        ? Alignment.topLeft
                        : Alignment.topCenter,
                    child: Container(
                      width: 105,
                      height: 120,
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage(widget.image!),
                              ),
                            ],
                          ),

                          // AnimatedIcon(icon: AnimatedIcons., progress: progress)

                          Align(
                            alignment: Alignment.bottomCenter,
                            child: InkWell(
                              onTap: () {
                                isFavorite = !isFavorite;
                                setState(() {});
                              },
                              child: Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(bottom: 5),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      color: Colors.grey.shade300,
                                      offset: const Offset(0, 1),
                                      spreadRadius: 1,
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: isFavorite == false
                                    ? Image.asset('assets/icons/plus.png')
                                    : Image.asset(
                                        'assets/icons/heartBlack.png',
                                      ),
                              ),
                            ),
                          )
                          // Positioned(
                          //   bottom: -10,
                          //   left: 0,
                          //   right: 0,
                          //   child: CircleAvatar(
                          //     radius: 20,
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Straight Forward',
                            style: TextStyle(
                              fontSize: Get.height * 0.026,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            '@straightforward',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff60656D),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 12),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xffFBC799),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          'Check out our website',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  SizedBox(
                    width: Responsive.isTablet(context)
                        ? Get.width * 0.6
                        : Get.width,
                    child: Text(
                      'StraightForward allows you to take quick architecture/ engineering sketches and turn them into professionally rendered drawings or mockups, making the brainstorming phase of designing, much faster!!',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Color(0xffF4F4F5),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: Get.width,
                    height: Get.height * 0.025,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff000000).withOpacity(0.15),
                          Color(0xff000000).withOpacity(0.0),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'POSTS',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: GridView.builder(
                      itemCount: 6,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 3 / 2,
                      ),
                      itemBuilder: (context, i) {
                        return InkWell(
                          onTap: () {
                            context.navigator.push<void>(
                              SwipeablePageRoute(
                                builder: (_) => BottomNavigation3(
                                  isFromCompanyProfile: true,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  imgs[i],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
