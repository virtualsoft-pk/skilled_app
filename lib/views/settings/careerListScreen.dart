import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/controller/quiz_controller.dart';
import 'package:skilled_app/views/quiz/quiz_start.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/flutter_typeahead.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../quiz/career_details.dart';

class CareerListScreen extends StatefulWidget {
  @override
  _CareerListScreenState createState() => _CareerListScreenState();
}

class _CareerListScreenState extends State<CareerListScreen> {
  bool changeView = false;
  List choiceChips = [
    "Choose1",
    "Choose2",
    "Choose3",
    "Choose4",
  ];
  List<String> careerList = [
    'Doctor',
    'File Maker',
    'UX Designer',
    'Musician',
  ];

  TextEditingController tagController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: backButtonColor),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          "Career List",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          InkWell(
              onTap: () {
                setState(() {
                  changeView = !changeView;
                });
              },
              child: Image.asset(
                "assets/images/edit.png",
                height: 16,
                width: 16,
              )),
          InkWell(
            onTap: () {
              setState(() {
                changeView = !changeView;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20, top: 20),
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          padding: EdgeInsets.symmetric(
              horizontal: Responsive.isTablet(context) ? Get.width * 0.09 : 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.03,
              ),
              Text(
                "Your Career list",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Text(
                "From the careers here, we create you a\npersonalised feed of content.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),

              ListView.builder(
                itemCount: careerList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      careerListTile(
                        careerList[i],
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                    ],
                  );
                },
              ),
              SizedBox(
                height: Get.height * 0.09,
              ),
              changeView
                  ? Container()
                  : InkWell(
                      onTap: () {
                        context.navigator.push<void>(
                            SwipeablePageRoute(builder: (_) => QuizStart()));
                      },
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 0.4),
                            borderRadius: BorderRadius.circular(8)),
                        title: Text(
                          "Retake The Quiz",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          "Your careers list will be reset after this",
                          style: TextStyle(
                              color: notificationTextColor, fontSize: 12),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 17,
                        ),
                      ),
                    ),
              SizedBox(
                height: changeView ? Get.height * 0.13 : Get.height * 0.04,
              ),
              changeView
                  ? CustomButton(
                      text: "SAVE AND CONTINUE",
                      funct: () {
                        Get.bottomSheet(buttomSheet(),
                            elevation: 20.0,
                            enableDrag: false,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            )));
                      },
                    )
                  : Container(),
              // : Align(
              //     alignment: Alignment.topRight,
              //     child: Container(
              //       height: Get.height * 0.07,
              //       // width: Get.width * 0.04,
              //       child: Center(child: Icon(Icons.add)),
              //       decoration: BoxDecoration(
              //           shape: BoxShape.circle, color: buttonColor),
              //     ),
              //   )
            ],
          ),
        ),
      ),
      floatingActionButton: changeView
          ? Container()
          : Padding(
              padding: EdgeInsets.only(
                  right: Responsive.isTablet(context) ? 80 : 12,
                  bottom: Responsive.isTablet(context) ? 32 : 6),
              child: FloatingActionButton(
                elevation: 5,
                backgroundColor: buttonColor,
                onPressed: () {
                  Get.bottomSheet(
                    buttomSheet(),
                    elevation: 20.0,
                    enableDrag: false,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                    ),
                  );

                  // showModalBottomSheet(
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15),
                  //   ),
                  //   context: context,
                  //   isScrollControlled: true,
                  //   builder: (context) {
                  //     return StatefulBuilder(
                  //       builder: (BuildContext context, set) {
                  //         return ListView(
                  //           children: [
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Row(
                  //                   children: [
                  //                     Text(
                  //                       "Add careers",
                  //                       style: TextStyle(
                  //                           fontSize: 16,
                  //                           fontWeight: FontWeight.w600),
                  //                     ),
                  //                     Spacer(),
                  //                     InkWell(
                  //                       onTap: () {
                  //                         Get.back();
                  //                       },
                  //                       child: Container(
                  //                         padding: EdgeInsets.all(5),
                  //                         height: Get.height * 0.06,
                  //                         decoration: BoxDecoration(
                  //                             color: Colors.grey.withOpacity(0.3),
                  //                             shape: BoxShape.circle),
                  //                         child: Center(
                  //                           child: Icon(
                  //                             Icons.close,
                  //                             size: 20,
                  //                           ),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: Get.height * 0.01,
                  //                 ),
                  //                 Divider(),
                  //                 SizedBox(
                  //                   height: Get.height * 0.02,
                  //                 ),
                  //                 Text(
                  //                   "Tags",
                  //                   style: TextStyle(
                  //                       fontSize: 12,
                  //                       fontWeight: FontWeight.w600),
                  //                 ),
                  //                 SizedBox(
                  //                   height: Get.height * 0.01,
                  //                 ),
                  //                 Container(
                  //                   margin: EdgeInsets.only(
                  //                       bottom: Get.height * 0.01),
                  //                   height: 55,
                  //                   child: TypeAheadField(
                  //                     function: () {
                  //                       print('object');
                  //                     },
                  //                     animationStart: 0,
                  //                     animationDuration: Duration.zero,
                  //                     textFieldConfiguration:
                  //                         TextFieldConfiguration(
                  //                       autofocus: false,
                  //                       controller: tagController,
                  //                       enableSuggestions: true,
                  //                       style: TextStyle(fontSize: 15),
                  //                       decoration: InputDecoration(
                  //                         border: OutlineInputBorder(
                  //                           borderRadius:
                  //                               BorderRadius.circular(16),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                     suggestionsBoxDecoration:
                  //                         SuggestionsBoxDecoration(),
                  //                     suggestionsCallback: (pattern) {
                  //                       List<String> matches = <String>[];
                  //                       matches.addAll(careerList);
                  //                       matches.retainWhere(
                  //                         (s) {
                  //                           return s.toLowerCase().contains(
                  //                                 pattern.toLowerCase(),
                  //                               );
                  //                         },
                  //                       );
                  //                       return matches;
                  //                     },
                  //                     itemBuilder: (context, sone) {
                  //                       return Card(
                  //                         child: Container(
                  //                           padding: const EdgeInsets.all(10),
                  //                           child: Text(sone.toString()),
                  //                         ),
                  //                       );
                  //                     },
                  //                     onSuggestionSelected: (String suggestion) {
                  //                       tagController.text = suggestion;
                  //                       selectedTags.add(suggestion);
                  //                       set(() {});
                  //                       setState(() {});
                  //                     },
                  //                   ),
                  //                 ),
                  //                 Text(
                  //                   "My selected tags",
                  //                   style: TextStyle(
                  //                       fontSize: 12,
                  //                       fontWeight: FontWeight.w600),
                  //                 ),
                  //                 SizedBox(
                  //                   height: Get.height * 0.01,
                  //                 ),
                  //                 TextFieldTags(
                  //                     initialTags:
                  //                         selectedTags.value as List<String>,
                  //                     //     textSeparators: <String>[
                  //                     //   //text tag seperators
                  //                     //   //Default = " ", ","
                  //                     // ],
                  //                     // tags: <String>[
                  //                     //   // List of tags
                  //                     //   // Provide a list of initial tags to initialize it
                  //                     // ],
                  //                     textFieldStyler: TextFieldStyler(
                  //                       //These are properties you can tweek for customization
                  //                       textFieldBorder: OutlineInputBorder(
                  //                         borderSide: BorderSide.none,
                  //                         borderRadius: BorderRadius.circular(16),
                  //                       ),
                  //                       hintText: "",
                  //                       hintStyle: TextStyle(
                  //                           fontSize: 12,
                  //                           fontWeight: FontWeight.w500),
                  //                       // bool textFieldFilled = false,
                  //                       // Icon icon,
                  //                       // String helperText = 'Enter tags',
                  //                       // TextStyle helperStyle,
                  //                       // TextStyle hintStyle,
                  //                       // EdgeInsets contentPadding,
                  //                       // Color textFieldFilledColor,
                  //                       // bool isDense = true,
                  //                       // bool textFieldEnabled = true,
                  //                       // OutlineInputBorder textFieldBorder = const OutlineInputBorder(),
                  //                       // OutlineInputBorder textFieldFocusedBorder,
                  //                       // OutlineInputBorder textFieldDisabledBorder,
                  //                       // OutlineInputBorder textFieldEnabledBorder
                  //                     ),
                  //                     tagsStyler: TagsStyler(
                  //                       //These are properties you can tweek for customization
                  //                       tagTextStyle: TextStyle(
                  //                           fontSize: 12,
                  //                           fontWeight: FontWeight.w500),
                  //                       tagCancelIcon: Icon(
                  //                         Icons.close,
                  //                         color: Colors.black,
                  //                       ),
                  //                       tagDecoration: BoxDecoration(
                  //                           color: Colors.grey.withOpacity(0.3),
                  //                           borderRadius:
                  //                               BorderRadius.circular(15)),
                  //                       //showHashtag = false,
                  //                       //  EdgeInsets tagPadding = const EdgeInsets.all(4.0),
                  //                       tagPadding: EdgeInsets.symmetric(
                  //                           horizontal: 10, vertical: 10),
                  //                       // EdgeInsets tagMargin = const EdgeInsets.symmetric(horizontal: 4.0),
                  //                       // BoxDecoration tagDecoration = const BoxDecoration(color: Color.fromARGB(255, 74, 137, 92)),
                  //                       // TextStyle tagTextStyle,
                  //                       // Icon tagCancelIcon = const Icon(Icons.cancel, size: 18.0, color: Colors.green)
                  //                     ),
                  //                     onTag: (tag) {},
                  //                     onDelete: (tag) {},
                  //                     validator: (tag) {
                  //                       if (tag.length > 15) {
                  //                         return "hey that's too long";
                  //                       } else if (tag.isEmpty) {
                  //                         return "enter something";
                  //                       }
                  //                     }
                  //                     //tagsDistanceFromBorderEnd: 0.725,
                  //                     //scrollableTagsMargin: EdgeInsets.only(left: 9),
                  //                     //scrollableTagsPadding: EdgeInsets.only(left: 9),
                  //                     ),
                  //                 Text(
                  //                   "Suggestions from the top list:",
                  //                   style: TextStyle(
                  //                       fontSize: 12,
                  //                       fontWeight: FontWeight.w600),
                  //                 ),
                  //               ],
                  //             ),
                  //             SizedBox(
                  //               height: Get.height * 0.02,
                  //             ),
                  //             //Calling Chips form here..........................
                  //             chipList(),
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 SizedBox(
                  //                   height: Get.height * 0.04,
                  //                 ),
                  //                 Row(
                  //                   children: [
                  //                     Expanded(
                  //                       child: InkWell(
                  //                         onTap: () {
                  //                           Get.back();
                  //                         },
                  //                         child: Container(
                  //                           height: Get.height * 0.07,
                  //                           // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  //                           decoration: BoxDecoration(
                  //                               borderRadius:
                  //                                   BorderRadius.circular(20),
                  //                               border: Border.all(
                  //                                   width: 0.3,
                  //                                   color: Colors.grey)),
                  //                           child: Center(
                  //                               child: Text(
                  //                             "Cancel",
                  //                             style: TextStyle(
                  //                                 fontSize: 20,
                  //                                 fontWeight: FontWeight.w500),
                  //                           )),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                     SizedBox(
                  //                       width: Get.width * 0.04,
                  //                     ),
                  //                     Expanded(
                  //                       child: InkWell(
                  //                         onTap: () async {
                  //                           careerList.addAll(selectedTags);
                  //                           selectedTags.clear();
                  //                           set(() {});
                  //                           Get.back();
                  //                         },
                  //                         child: Container(
                  //                           height: Get.height * 0.07,
                  //                           // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  //                           decoration: BoxDecoration(
                  //                             color: buttonColor,
                  //                             borderRadius:
                  //                                 BorderRadius.circular(20),
                  //                           ),
                  //                           child: Center(
                  //                             child: Text(
                  //                               "Add",
                  //                               style: TextStyle(fontSize: 20),
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ],
                  //         );
                  //       },
                  //     );
                  //   },
                  // );
                },
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
    );
  }

  QuizController? quizController;
  @override
  void initState() {
    super.initState();
    quizController = Get.put(QuizController());
  }

  buttomSheet() {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 15,
      ),
      height: Get.height,
      child: SingleChildScrollView(
        child: StatefulBuilder(builder: (context, sset) {
          return Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Add careers",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: Get.height * 0.06,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.close,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Divider(),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text(
                    "Tags",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: Get.height * 0.01),
                    height: 55,
                    child: TypeAheadField(
                      function: () {
                        quizController!.selectedTags.add(tagController.text);
                        tagController.clear();
                        FocusScope.of(context).unfocus();
                        setState(() {});
                        sset(() {});
                      },
                      animationStart: 0,
                      animationDuration: Duration.zero,
                      textFieldConfiguration: TextFieldConfiguration(
                        autofocus: false,
                        controller: tagController,
                        enableSuggestions: true,
                        style: TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                          hintText: 'Search Careers',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      suggestionsBoxDecoration: SuggestionsBoxDecoration(),
                      suggestionsCallback: (pattern) {
                        List<String> matches = <String>[];
                        matches.addAll(careerList);

                        matches.retainWhere(
                          (s) {
                            return s.toLowerCase().contains(
                                  pattern.toLowerCase(),
                                );
                          },
                        );
                        return matches;
                      },
                      itemBuilder: (context, sone) {
                        return Card(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Text(sone.toString()),
                          ),
                        );
                      },
                      onSuggestionSelected: (String suggestion) {
                        tagController.text = suggestion;
                        quizController!.selectedTags.add(suggestion);
                        tagController.clear();
                        FocusScope.of(context).unfocus();
                        setState(() {});
                        sset(() {});
                      },
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Text(
                    "My selected tags",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Container(
                    width: double.infinity,
                    height: 40,
                    child: quizController!.selectedTags.value.length == 0
                        ? Center(
                            child: Text("No tag yet"),
                          )
                        : ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                quizController!.selectedTags.value.length,
                            itemBuilder: (ctx, i) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    quizController!.selectedTags.removeAt(i);
                                  });
                                  sset(() {});
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(15)),
                                  margin: EdgeInsets.only(right: 5),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Row(
                                      children: [
                                        Text(quizController!.selectedTags[i]),
                                        Icon(
                                          Icons.clear,
                                          color: Colors.black,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                  // TextFieldTags(
                  //     initialTags: quizController!.selectedTags.value,

                  //     //     textSeparators: <String>[
                  //     //   //text tag seperators
                  //     //   //Default = " ", ","
                  //     // ],
                  //     // tags: <String>[
                  //     //   // List of tags
                  //     //   // Provide a list of initial tags to initialize it
                  //     // ],
                  //     textFieldStyler: TextFieldStyler(
                  //       //These are properties you can tweek for customization
                  //       textFieldBorder: OutlineInputBorder(
                  //         borderSide: BorderSide.none,
                  //         borderRadius: BorderRadius.circular(16),
                  //       ),
                  //       hintText: "",
                  //       hintStyle:
                  //           TextStyle(fontSize: 12, fontWeight: FontWeight.w500),

                  //       // bool textFieldFilled = false,
                  //       // Icon icon,
                  //       // String helperText = 'Enter tags',
                  //       // TextStyle helperStyle,
                  //       // TextStyle hintStyle,
                  //       // EdgeInsets contentPadding,
                  //       // Color textFieldFilledColor,
                  //       // bool isDense = true,
                  //       // bool textFieldEnabled = true,
                  //       // OutlineInputBorder textFieldBorder = const OutlineInputBorder(),
                  //       // OutlineInputBorder textFieldFocusedBorder,
                  //       // OutlineInputBorder textFieldDisabledBorder,
                  //       // OutlineInputBorder textFieldEnabledBorder
                  //     ),
                  //     tagsStyler: TagsStyler(
                  //       //These are properties you can tweek for customization
                  //       tagTextStyle:
                  //           TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  //       tagCancelIcon: Icon(
                  //         Icons.close,
                  //         color: Colors.black,
                  //       ),
                  //       tagDecoration: BoxDecoration(
                  //           color: Colors.grey.withOpacity(0.3),
                  //           borderRadius: BorderRadius.circular(15)),
                  //       //showHashtag = false,
                  //       //  EdgeInsets tagPadding = const EdgeInsets.all(4.0),
                  //       tagPadding:
                  //           EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  //       // EdgeInsets tagMargin = const EdgeInsets.symmetric(horizontal: 4.0),
                  //       // BoxDecoration tagDecoration = const BoxDecoration(color: Color.fromARGB(255, 74, 137, 92)),
                  //       // TextStyle tagTextStyle,
                  //       // Icon tagCancelIcon = const Icon(Icons.cancel, size: 18.0, color: Colors.green)
                  //     ),
                  //     onTag: (tag) {},
                  //     onDelete: (tag) {},
                  //     validator: (tag) {
                  //       if (tag.length > 15) {
                  //         return "hey that's too long";
                  //       } else if (tag.isEmpty) {
                  //         return "enter something";
                  //       }
                  //     }
                  //     //tagsDistanceFromBorderEnd: 0.725,
                  //     //scrollableTagsMargin: EdgeInsets.only(left: 9),
                  //     //scrollableTagsPadding: EdgeInsets.only(left: 9),
                  //     ),

                  // SizedBox(
                  //   height: 10,
                  // ),

                  // Text(
                  //   "Suggestions from the top list:",
                  //   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  // ),
                ],
              ),

              SizedBox(
                height: Get.height * 0.02,
              ),
              //Calling Chips form here..........................
              chipList(sset),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: Get.height * 0.07,
                            // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(width: 0.3, color: Colors.grey)),
                            child: Center(
                                child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.04,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () async {
                            var seen = Set<String>();
                            careerList.addAll(quizController!.selectedTags);
                            careerList
                                .where(
                                  (element) => seen.add(element),
                                )
                                .toList();
                            careerList.clear();
                            careerList = seen.toList();
                            clearence();

                            setState(() {});
                            Get.back();
                          },
                          child: Container(
                            height: Get.height * 0.07,
                            // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                              color: buttonColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: Text(
                              "Add",
                              style: TextStyle(fontSize: 20),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ],
          );
        }),
      ),
    );
  }

  void clearence() {
    quizController!.selectedTags.clear();
    tagController.clear();
  }

  Widget careerListTile(String name) {
    return InkWell(
      onTap: () {
        if (!changeView) {
          context.navigator
              .push<void>(SwipeablePageRoute(builder: (_) => Career()));
          // Get.to(() => Career());
        }
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        height: 60,
        decoration: BoxDecoration(
          color: lightGreenColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 0.7),
        ),
        child: Row(
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Spacer(),
            changeView
                ? InkWell(
                    onTap: () {
                      careerList.remove(name);
                      setState(() {});
                    },
                    child: Image.asset(
                      "assets/images/delete.png",
                      height: Get.height * 0.034,
                    ),
                  )
                : Text(
                    '?',
                    style: GoogleFonts.nobile(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
          ],
        ),
      ),
    );
  }

  Widget buildChoiceChips() => Wrap(
        // runSpacing: spacing,
        // spacing: spacing,
        children: choiceChips
            .map((choiceChip) => ChoiceChip(
                  label: Text(choiceChip.label),
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                  onSelected: (isSelected) => setState(() {
                    choiceChips = choiceChips.map((otherChip) {
                      final newChip = otherChip.copy(isSelected: false);

                      return choiceChip == newChip
                          ? newChip.copy(isSelected: isSelected)
                          : newChip;
                    }).toList();
                  }),
                  selected: choiceChip.isSelected,
                  selectedColor: Colors.green,
                  backgroundColor: Colors.blue,
                ))
            .toList(),
      );

  Widget _buildChip(
    String label,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Chip(
        side: BorderSide(color: Colors.grey, width: 1),
        backgroundColor: Colors.white,
        labelPadding: EdgeInsets.all(2.0),
        label: Text(
          label,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      ),
    );
  }

  chipList(StateSetter sset) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          InkWell(
            onTap: () {
              quizController!.selectedTags.add('UX Design');
              print(quizController!.selectedTags);
              setState(() {});
              sset(() {});
            },
            child: _buildChip(
              'UX Design',
            ),
          ),
          InkWell(
            onTap: () {
              quizController!.selectedTags.add('Product design');
              print(quizController!.selectedTags);
              setState(() {});
              sset(() {});
            },
            child: _buildChip(
              'Product design',
            ),
          ),
          InkWell(
            onTap: () {
              quizController!.selectedTags.add('UX/ Design');
              print(quizController!.selectedTags);
              setState(() {});
              sset(() {});
            },
            child: _buildChip(
              'UX/ Design',
            ),
          ),
        ],
      ),
    );
  }
}
