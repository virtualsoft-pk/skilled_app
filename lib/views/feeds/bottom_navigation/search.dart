import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/feeds/bottom_navigation/search_result.dart';
import 'package:skilled_app/views/forum/bottom_navigation_3.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../../model/search_model.dart';
import '../../../utils/app_colors.dart';

class Search extends StatelessWidget {
  Search({Key? key}) : super(key: key);

  List<SearchModel> searchModel = [
    SearchModel(bacGroundImage: 'assets/webDesign.png', title: 'Web design'),
    SearchModel(bacGroundImage: 'assets/art.png', title: 'Art'),
    SearchModel(bacGroundImage: 'assets/coding.png', title: 'Coding'),
    SearchModel(bacGroundImage: 'assets/painting.png', title: 'Painting'),
    SearchModel(bacGroundImage: 'assets/aviation.png', title: 'Aviation'),
    SearchModel(bacGroundImage: 'assets/doctor.png', title: 'Doctor'),
    SearchModel(bacGroundImage: 'assets/webDesign.png', title: 'Web design'),
    SearchModel(bacGroundImage: 'assets/art.png', title: 'Art'),
    SearchModel(bacGroundImage: 'assets/coding.png', title: 'Coding'),
    SearchModel(bacGroundImage: 'assets/painting.png', title: 'Painting'),
    SearchModel(bacGroundImage: 'assets/aviation.png', title: 'Aviation'),
    SearchModel(bacGroundImage: 'assets/doctor.png', title: 'Doctor'),
    SearchModel(bacGroundImage: 'assets/painting.png', title: 'Painting'),
    SearchModel(bacGroundImage: 'assets/aviation.png', title: 'Aviation'),
    SearchModel(bacGroundImage: 'assets/doctor.png', title: 'Doctor')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // customBackButton(() {}),
                      if (Responsive.isTablet(context))
                        Padding(
                          padding: const EdgeInsets.only(top: 32, bottom: 32),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              'assets/image 29.png',
                              height: 20,
                            ),
                          ),
                        ),
                      SizedBox(
                        height: 60,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: greyColor,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            prefixIcon: Image.asset(
                              'assets/Search.png',
                              cacheHeight: 14,
                            ),
                            hintStyle: const TextStyle(
                              fontSize: 14,
                              color: lightGrey,
                              fontWeight: FontWeight.w500,
                            ),
                            hintText: 'Search',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recent searches',
                            style: TextStyle(
                              fontSize: Responsive.isTablet(context) ? 14 : 16,
                              color: textColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Clear all',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    Responsive.isTablet(context) ? 12 : 14,
                                color: lightGrey,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Wrap(
                        runSpacing: 10,
                        spacing: 24,
                        children: chiplist
                            .map(
                              (e) => InkWell(
                                onTap: () {
                                  context.navigator.push<void>(
                                    SwipeablePageRoute(
                                      builder: (_) => BottomNavigation3(),
                                    ),
                                  );
                                  // Get.to(() => BottomNavigation3());
                                },
                                child: Chip(
                                  backgroundColor: Responsive.isTablet(context)
                                      ? Colors.grey[200]
                                      : grey700,
                                  labelPadding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: Responsive.isTablet(context)
                                          ? 5
                                          : 10),
                                  label: Text(
                                    '${e}',
                                    style: TextStyle(
                                      fontSize: Responsive.isTablet(context)
                                          ? 13
                                          : 14,
                                      fontWeight: FontWeight.w500,
                                      color: Responsive.isTablet(context)
                                          ? grey700
                                          : Color(0xff494F58),
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Popular On Skilld',
                        style: TextStyle(
                          fontSize: Responsive.isTablet(context) ? 14 : 16,
                          fontWeight: FontWeight.w600,
                          color: textColor,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: Responsive.isTablet(context) ? 12 : 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                Responsive.isTablet(context) ? 4 : 2,
                            crossAxisSpacing:
                                Responsive.isTablet(context) ? 8 : 15,
                            mainAxisSpacing: 10,
                            childAspectRatio: 1.5),
                        itemBuilder: (context, i) {
                          return InkWell(
                            onTap: () {
                              context.navigator.push<void>(
                                SwipeablePageRoute(
                                  builder: (_) => SearchResult(),
                                ),
                              );
                              // Get.to(() => SearchResult());
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: Get.height * 0.12,
                              width: Get.width * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.amber,
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                    filterColor,
                                    BlendMode.darken,
                                  ),
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      searchModel[i].bacGroundImage!),
                                ),
                              ),
                              child: Text(
                                searchModel[i].title!,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: backgroundColor,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (Responsive.isTablet(context)) SizedBox(width: Get.width * 0.25)
          ],
        ),
      ),
    );
  }

  List chiplist = [
    'UX/ Design',
    'Skillshare',
    'Udemy',
    'Best career for me',
    '2022 Career trends',
  ];
}
