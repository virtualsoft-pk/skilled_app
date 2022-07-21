import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../../model/feed_model.dart';
import '../../../utils/app_colors.dart';
import '../../eventCalander/in_person.dart';
import 'company_profile.dart';

class SearchResult extends StatefulWidget {
  bool? isFromCompany;

  String? image;

  SearchResult({this.isFromCompany = false, this.image});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  bool isFree = false;
  bool isLike = false;
  bool isLikw1 = false;
  int count1 = 444;
  int count2 = 796;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: tabAppBar(
          leading: Responsive.isMobile(context),
          title: "Search Results",
          trailing: Padding(
            padding: EdgeInsets.symmetric(
                horizontal:
                    Responsive.isTablet(context) ? Get.width * 0.08 : 16),
            child: InkWell(
              onTap: () {
                filterBottomSheet();
              },
              child: Container(
                margin: EdgeInsets.only(
                    bottom: Get.height * 0.02, top: Get.height * 0.03),
                padding: const EdgeInsets.all(2),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: greyColor,
                ),
                child: const Icon(
                  Icons.filter_list,
                  size: 16,
                ),
              ),
            ),
          )),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  color: backgroundColor,
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            widget.isFromCompany!
                                ? Container()
                                : SizedBox(
                                    height: Get.height * 0.03,
                                  ),
                            widget.isFromCompany!
                                ? Container()
                                : const Text(
                                    'Best career for me',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: textColor,
                                    ),
                                  ),
                            widget.isFromCompany!
                                ? Container()
                                : const SizedBox(
                                    height: 6,
                                  ),
                            const Text(
                              'Total 120 results found',
                              style: TextStyle(
                                color: greyText,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // const SizedBox(
                            //   height: 22,
                            // ),
                            // const Divider(
                            //   color: dividerColor,
                            // ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: feedModel.length,
                        shrinkWrap: true,
                        itemBuilder: (context, i) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 15),
                              Container(
                                padding: const EdgeInsets.only(left: 16),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            context.navigator.push<void>(
                                              SwipeablePageRoute(
                                                builder: (_) => CompanyProfile(
                                                  image: feedModel[i]
                                                      .profileImage!,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            feedModel[i].name!,
                                            style: const TextStyle(
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
                                    const Spacer(),
                                    IconButton(
                                      onPressed: () {
                                        share();
                                      },
                                      icon: const Icon(
                                        Icons.more_vert,
                                        color: Colors.grey,
                                      ),
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
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      feedModel[i].text!,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.to(() => InPerson());
                                      },
                                      child: Container(
                                        height: Responsive.isTablet(context)
                                            ? Get.height * 0.45
                                            : 164,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius: const BorderRadius.only(
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
                                      decoration: const BoxDecoration(
                                        color: greyColor,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12),
                                        ),
                                      ),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              feedModel[i].website!,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: websitegreyColor,
                                              ),
                                            ),
                                            Text(
                                              feedModel[i].websiteDesc!,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: textColor,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    // const SizedBox(
                                    //   height: 12,
                                    // ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        i == 0
                                            ? isLike == false
                                                ? InkWell(
                                                    onTap: () {
                                                      isLike = true;
                                                      count1++;
                                                      setState(() {});
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
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
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
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
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
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
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Image.asset(
                                                        'assets/icons/2107845.png',
                                                        height: 20,
                                                        width: 18,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                        Text(
                                          i == 0
                                              ? count1.toString()
                                              : count2.toString(),
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const SizedBox(
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
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          feedModel[i].shares.toString(),
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    const Divider(
                                      color: dividerColor,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
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

  RangeValues _currentRangeValues = const RangeValues(40, 80);

  List sortBy = [
    'Oldest',
    'Newest',
    'Popular',
  ];
  List sortByEmpty = [];

  List multiChipList = [
    'All',
    'Course',
    'Arcticle',
    'Video Feed',
  ];

  List multiChipEmptyList = [];

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }

  filterBottomSheet() {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, setState) {
            return Container(
              padding: EdgeInsets.only(
                  top: 24,
                  left: Responsive.isTablet(context) ? Get.width * 0.1 : 15,
                  right: Responsive.isTablet(context) ? Get.width * 0.25 : 15,
                  bottom: 24),
              width: Get.width,
              child: ListView(
                // crossAxisAlignment:
                //     CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Filter results',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Text(
                          'Apply',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff60656D),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.1,
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.circular(40),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/x.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Divider(
                    color: dividerColor,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Find result from',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: multiChipList.map(
                      (e) {
                        return multiChipEmptyList.contains(e)
                            ? InkWell(
                                onTap: (() {
                                  multiChipEmptyList.remove(e);
                                  setState(() {});
                                }),
                                child: Chip(
                                  backgroundColor: chipBackColor,
                                  side: const BorderSide(color: Colors.black),
                                  labelPadding: const EdgeInsets.all(7),
                                  label: Text(e),
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  multiChipEmptyList.add(e);
                                  setState(() {});
                                },
                                child: Chip(
                                  labelPadding: const EdgeInsets.all(8),
                                  label: Text(e),
                                ),
                              );
                      },
                    ).toList(),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      // showModalBottomSheet(
                      //   shape: const RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.only(
                      //       topLeft: Radius.circular(12),
                      //       topRight: Radius.circular(12),
                      //     ),
                      //   ),
                      //   context: context,
                      //   builder: (context) {
                      //     return StatefulBuilder(
                      //       builder: (BuildContext context,
                      //           setState) {
                      //         return Container(
                      //           padding: EdgeInsets.only(
                      //               top: 24,
                      //               left: 15,
                      //               right: 15,
                      //               bottom: 24),
                      //           width: Get.width,
                      //           child: Column(
                      //             crossAxisAlignment:
                      //                 CrossAxisAlignment
                      //                     .start,
                      //             children: [
                      //               Row(
                      //                 children: [
                      //                   Text(
                      //                     'Filter results',
                      //                     style: TextStyle(
                      //                       fontSize: 16,
                      //                       fontWeight:
                      //                           FontWeight
                      //                               .w600,
                      //                     ),
                      //                   ),
                      //                   Spacer(),
                      //                   Text(
                      //                     'Apply',
                      //                     style: TextStyle(
                      //                       fontWeight:
                      //                           FontWeight
                      //                               .w600,
                      //                       fontSize: 14,
                      //                       color: Color(
                      //                           0xff60656D),
                      //                     ),
                      //                   ),
                      //                   SizedBox(
                      //                     width: Get.width *
                      //                         0.1,
                      //                   ),
                      //                   InkWell(
                      //                     onTap: () {
                      //                       Get.back();
                      //                     },
                      //                     child: Container(
                      //                       padding:
                      //                           EdgeInsets
                      //                               .all(
                      //                                   20),
                      //                       height: 24,
                      //                       width: 24,
                      //                       decoration:
                      //                           BoxDecoration(
                      //                         color:
                      //                             greyColor,
                      //                         borderRadius:
                      //                             BorderRadius
                      //                                 .circular(
                      //                                     40),
                      //                         image:
                      //                             DecorationImage(
                      //                           fit: BoxFit
                      //                               .cover,
                      //                           image:
                      //                               AssetImage(
                      //                             'assets/x.png',
                      //                           ),
                      //                         ),
                      //                       ),
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //               SizedBox(
                      //                 height: 14,
                      //               ),
                      //               Divider(
                      //                 color: dividerColor,
                      //               ),
                      //               const SizedBox(
                      //                 height: 12,
                      //               ),
                      //               Text(
                      //                 'Find result from',
                      //                 style: TextStyle(
                      //                   fontSize: 14,
                      //                   fontWeight:
                      //                       FontWeight.w700,
                      //                   color: textColor,
                      //                 ),
                      //               ),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Wrap(
                      //                 clipBehavior:
                      //                     Clip.antiAlias,
                      //                 runSpacing: 10,
                      //                 spacing: 10,
                      //                 children:
                      //                     multiChipList.map(
                      //                   (e) {
                      //                     return multiChipEmptyList
                      //                             .contains(
                      //                                 e)
                      //                         ? InkWell(
                      //                             onTap:
                      //                                 (() {
                      //                               multiChipEmptyList
                      //                                   .remove(e);
                      //                               setState(
                      //                                   () {});
                      //                             }),
                      //                             child:
                      //                                 Chip(
                      //                               backgroundColor:
                      //                                   chipBackColor,
                      //                               side: BorderSide(
                      //                                   color:
                      //                                       Colors.black),
                      //                               labelPadding:
                      //                                   EdgeInsets.all(7),
                      //                               label:
                      //                                   Text(e),
                      //                             ),
                      //                           )
                      //                         : InkWell(
                      //                             onTap:
                      //                                 () {
                      //                               multiChipEmptyList
                      //                                   .add(e);
                      //                               setState(
                      //                                   () {});
                      //                             },
                      //                             child:
                      //                                 Chip(
                      //                               labelPadding:
                      //                                   EdgeInsets.all(8),
                      //                               label:
                      //                                   Text(e),
                      //                             ),
                      //                           );
                      //                   },
                      //                 ).toList(),
                      //               ),
                      //               SizedBox(
                      //                 height: 25,
                      //               ),
                      //               Container(
                      //                 alignment: Alignment
                      //                     .topCenter,
                      //                 child: Text(
                      //                   'Back to All Categories',
                      //                   style: TextStyle(
                      //                     fontSize: 16,
                      //                     fontWeight:
                      //                         FontWeight
                      //                             .w600,
                      //                     color: textColor,
                      //                   ),
                      //                 ),
                      //               )
                      //             ],
                      //           ),
                      //         );
                      //       },
                      //     );
                      //   },
                      // );
                    },
                    child: Container(
                      alignment: Alignment.topRight,
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: lightGrey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Sort by',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: sortBy.map(
                      (e) {
                        return sortByEmpty.contains(e)
                            ? InkWell(
                                onTap: (() {
                                  if (sortByEmpty.length > 1) {
                                    sortByEmpty = [1];
                                  }
                                  sortByEmpty.remove(e);
                                  setState(
                                    () {},
                                  );
                                }),
                                child: Chip(
                                  side: const BorderSide(width: 1),
                                  backgroundColor: chipBackColor,
                                  labelPadding: const EdgeInsets.all(7),
                                  label: Text(e),
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  if (sortByEmpty.length > 1) {
                                    sortByEmpty = [1];
                                  }
                                  sortByEmpty.add(e);
                                  setState(
                                    () {},
                                  );
                                },
                                child: Chip(
                                  labelPadding: const EdgeInsets.all(8),
                                  label: Text(e),
                                ),
                              );
                      },
                    ).toList(),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: lightGrey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Price Range',
                    style: const TextStyle(
                      color: textColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            isFree = !isFree;
                            setState(
                              () {},
                            );
                          },
                          child: Chip(
                            side: isFree == false
                                ? BorderSide.none
                                : const BorderSide(),
                            backgroundColor: isFree == false
                                ? Colors.grey.shade300
                                : chipBackColor,
                            label: const Text('Free'),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: RangeSlider(
                          labels: const RangeLabels('Free', 'cost'),
                          inactiveColor: const Color(0xffE8E9EA),
                          activeColor: chipBackColor,
                          max: 100,
                          min: 10,
                          values: _currentRangeValues,
                          onChanged: (RangeValues value) {
                            _currentRangeValues = value;
                            setState((() {}));
                          },
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/pound.png',
                              height: 10,
                              width: 10,
                              fit: BoxFit.cover,
                            ),
                            const Text('200'),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
