import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/feed_model.dart';
import '../../../utils/app_colors.dart';
import '../../../widgets/all_widgets.dart';
import '../../eventCalander/in_person.dart';

class SearchResult extends StatefulWidget {
  SearchResult({Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: backgroundColor,
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: backButton(imageUrl: 'assets/back.png',),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        'Search Result',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: textColor,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
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
                                      top: 24, left: 15, right: 15, bottom: 24),
                                  width: Get.width,
                                  child: ListView(
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Filter results',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'Apply',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xff60656D),
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
                                              padding: EdgeInsets.all(20),
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                color: greyColor,
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                image: DecorationImage(
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
                                      SizedBox(
                                        height: 14,
                                      ),
                                      Divider(
                                        color: dividerColor,
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Find result from',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: textColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Wrap(
                                        runSpacing: 10,
                                        spacing: 10,
                                        children: multiChipList.map(
                                          (e) {
                                            return multiChipEmptyList
                                                    .contains(e)
                                                ? InkWell(
                                                    onTap: (() {
                                                      multiChipEmptyList
                                                          .remove(e);
                                                      setState(() {});
                                                    }),
                                                    child: Chip(
                                                      backgroundColor:
                                                          chipBackColor,
                                                      side: BorderSide(
                                                          color: Colors.black),
                                                      labelPadding:
                                                          EdgeInsets.all(7),
                                                      label: Text(e),
                                                    ),
                                                  )
                                                : InkWell(
                                                    onTap: () {
                                                      multiChipEmptyList.add(e);
                                                      setState(() {});
                                                    },
                                                    child: Chip(
                                                      labelPadding:
                                                          EdgeInsets.all(8),
                                                      label: Text(e),
                                                    ),
                                                  );
                                          },
                                        ).toList(),
                                      ),
                                      SizedBox(
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
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Sort by',
                                        style: TextStyle(
                                          color: textColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
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
                                                      if (sortByEmpty.length >
                                                          1) {
                                                        sortByEmpty = [1];
                                                      }
                                                      sortByEmpty.remove(e);
                                                      setState(
                                                        () {},
                                                      );
                                                    }),
                                                    child: Chip(
                                                      side:
                                                          BorderSide(width: 1),
                                                      backgroundColor:
                                                          chipBackColor,
                                                      labelPadding:
                                                          EdgeInsets.all(7),
                                                      label: Text(e),
                                                    ),
                                                  )
                                                : InkWell(
                                                    onTap: () {
                                                      if (sortByEmpty.length >
                                                          1) {
                                                        sortByEmpty = [1];
                                                      }
                                                      sortByEmpty.add(e);
                                                      setState(
                                                        () {},
                                                      );
                                                    },
                                                    child: Chip(
                                                      labelPadding:
                                                          EdgeInsets.all(8),
                                                      label: Text(e),
                                                    ),
                                                  );
                                          },
                                        ).toList(),
                                      ),
                                      SizedBox(
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
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Price Range',
                                        style: TextStyle(
                                          color: textColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      RangeSlider(
                                        labels: RangeLabels('Free', 'cost'),
                                        inactiveColor: Color(0xffE8E9EA),
                                        activeColor: chipBackColor,
                                        max: 100,
                                        min: 10,
                                        values: _currentRangeValues,
                                        onChanged: (RangeValues value) {
                                          _currentRangeValues = value;
                                          setState((() {}));
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                      child: backButton(imageUrl: 'assets/filterIcon.png'),
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  'Best career for me',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: textColor,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Total 120 results found',
                  style: TextStyle(
                    color: greyText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Divider(
                  color: dividerColor,
                ),
                SizedBox(
                  height: 15,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: feedModel.length,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.amber,
                              backgroundImage:
                                  AssetImage(feedModel[i].profileImage!),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  feedModel[i].name!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: textColor,
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
                            Image.asset(
                              'assets/more-vertical.png',
                              height: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
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
                    onTap: (){
                      Get.to(()=> InPerson());

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
                                image: AssetImage(feedModel[i].mainImage!),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        SizedBox(
                          height: 16,
                        ),
                        Divider(
                          color: dividerColor,
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
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
}
