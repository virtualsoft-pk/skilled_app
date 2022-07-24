import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/controller/quiz_controller.dart';
import 'package:skilled_app/controller/tagcontroller.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/quiz/quiz_start.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'package:textfield_tags/textfield_tags.dart';

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
      appBar: tabAppBar(
        title: "Career List",
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: InkWell(
            onTap: () {
              setState(() {
                changeView = !changeView;
              });
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 20, top: 20),
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
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
              const Text(
                "Your Career list",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              const Text(
                "From the careers here, we create you a\npersonalised feed of content.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),

              ListView.builder(
                itemCount: careerList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
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
                        context.navigator.push<void>(SwipeablePageRoute(
                            builder: (_) => const QuizStart()));
                      },
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Colors.grey, width: 0.4),
                            borderRadius: BorderRadius.circular(8)),
                        title: const Text(
                          "Retake The Quiz",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        subtitle: const Text(
                          "Your careers list will be reset after this",
                          style: TextStyle(
                              color: notificationTextColor, fontSize: 12),
                        ),
                        trailing: const Icon(
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
                        Get.back();
                        // Get.bottomSheet(buttomSheet(),
                        //     elevation: 20.0,
                        //     enableDrag: false,
                        //     backgroundColor: Colors.white,
                        //     shape: const RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.only(
                        //       topLeft: Radius.circular(30.0),
                        //       topRight: Radius.circular(30.0),
                        //     )));
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
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                    ),
                  );
                },
                child: const Icon(
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
      margin: const EdgeInsets.only(
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
                      const Text(
                        "Add Topics",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          height: Get.height * 0.06,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              shape: BoxShape.circle),
                          child: const Center(
                            child: Icon(
                              Icons.close,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    "Title",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: Get.height * 0.01),
                    //height: 55,
                    child: const TagField(tagType: TagType.career),
                    //  TypeAheadField(
                    //   function: () {
                    //     quizController!.selectedTags.add(tagController.text);
                    //     tagController.clear();
                    //     FocusScope.of(context).unfocus();
                    //     setState(() {});
                    //     sset(() {});
                    //   },
                    //   animationStart: 0,
                    //   animationDuration: Duration.zero,
                    //   textFieldConfiguration: TextFieldConfiguration(
                    //     autofocus: false,
                    //     controller: tagController,
                    //     enableSuggestions: true,
                    //     style: const TextStyle(fontSize: 15),
                    //     decoration: InputDecoration(
                    //       hintText: 'Topics name',
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(16),
                    //       ),
                    //     ),
                    //   ),
                    //   suggestionsBoxDecoration:
                    //       const SuggestionsBoxDecoration(),
                    //   suggestionsCallback: (pattern) {
                    //     List<String> matches = <String>[];
                    //     matches.addAll(careerList);

                    //     matches.retainWhere(
                    //       (s) {
                    //         return s.toLowerCase().contains(
                    //               pattern.toLowerCase(),
                    //             );
                    //       },
                    //     );
                    //     return matches;
                    //   },
                    //   itemBuilder: (context, sone) {
                    //     return Card(
                    //       child: Container(
                    //         padding: const EdgeInsets.all(10),
                    //         child: Text(sone.toString()),
                    //       ),
                    //     );
                    //   },
                    //   onSuggestionSelected: (String suggestion) {
                    //     tagController.text = suggestion;
                    //     quizController!.selectedTags.add(suggestion);
                    //     tagController.clear();
                    //     FocusScope.of(context).unfocus();
                    //     setState(() {});
                    //     sset(() {});
                    //   },
                    // ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  const Text(
                    "Suggestions from the top list:",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
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
                            child: const Center(
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
                            child: const Center(
                                child: Text(
                              "Add",
                              style: const TextStyle(fontSize: 20),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
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
        padding: const EdgeInsets.symmetric(
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
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
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
                  labelStyle: const TextStyle(
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
        side: const BorderSide(color: Colors.grey, width: 1),
        backgroundColor: Colors.white,
        labelPadding: const EdgeInsets.all(2.0),
        label: Text(
          label,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      ),
    );
  }

  chipList(StateSetter sset) {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          InkWell(
            onTap: () {
              if (!quizController!.selectedTags.contains('UX Design')) {
                quizController!.selectedTags.add('UX Design');
                print(quizController!.selectedTags);
                setState(() {});
                sset(() {});
              }
            },
            child: _buildChip(
              'UX Design',
            ),
          ),
          InkWell(
            onTap: () {
              if (!quizController!.selectedTags.contains('Product Design')) {
                quizController!.selectedTags.add('Product design');
                print(quizController!.selectedTags);
                setState(() {});
                sset(() {});
              }
            },
            child: _buildChip(
              'Product design',
            ),
          ),
          InkWell(
            onTap: () {
              if (!quizController!.selectedTags.contains('Mobile')) {
                quizController!.selectedTags.add('Mobile');
                print(quizController!.selectedTags);
                setState(() {});
                sset(() {});
              }
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

enum TagType { post, career, other }

class TagField extends StatefulWidget {
  const TagField({Key? key, required this.tagType}) : super(key: key);
  final TagType tagType;

  @override
  State<TagField> createState() => _TagFieldState();
}

class _TagFieldState extends State<TagField> {
  // late double _distanceToField;
  late final TextfieldTagsController _controller = TextfieldTagsController();
  late final TagController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.find<TagController>();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _distanceToField = MediaQuery.of(context).size.width;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 0.7,
        ),
      ),
      child: TextFieldTags(
        textfieldTagsController: _controller,
        initialTags: getInitialTags(widget.tagType),
        textSeparators: const [','],
        letterCase: LetterCase.normal,
        validator: (String tag) {
          if (_controller.getTags != null && _controller.getTags!.length >= 5) {
            return null;
          }
          if (_controller.getTags!.contains(tag)) {
            return 'you already entered that';
          }
          return null;
        },
        inputfieldBuilder: (context, tec, fn, error, onChanged, onSubmitted) {
          return ((context, sc, tags, onTagDelete) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                readOnly: tags.length >= 3,
                textInputAction: TextInputAction.done,
                cursorColor: Colors.transparent,
                controller: tec,
                focusNode: fn,
                showCursor: true,
                decoration: InputDecoration(
                  isDense: true,
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),

                  //hintText: _controller.hasTags ? '' : "Enter tag...",
                  hintText: '',
                  errorText: error,
                  // prefixIconConstraints:
                  //     BoxConstraints(maxWidth: _distanceToField * 0.74),
                  prefixIcon: tags.isNotEmpty
                      ? Wrap(
                          children: tags.map((String tag) {
                          return Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                              color: greyColor,
                            ),
                            margin: const EdgeInsets.fromLTRB(5, 6, 5, 0),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      child: Text(
                                        tag,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      onTap: () {
                                        //print("$tag selected");
                                      },
                                    ),
                                    const SizedBox(width: 4.0),
                                    GestureDetector(
                                      child: Icon(
                                        Icons.close,
                                        size: 16,
                                        color: Colors.grey[800],
                                      ),
                                      onTap: () {
                                        onTagDelete(tag);
                                      },
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                              ],
                            ),
                          );
                        }).toList())
                      : null,
                ),
                onChanged: tags.length < 3 ? onChanged : null,
                onSubmitted: tags.length < 3
                    ? (tag) {
                        onSubmitted;
                        updateTags(widget.tagType, tag.replaceAll(" ", ""));
                      }
                    : null,
              ),
            );
          });
        },
      ),
    );
  }

  List<String> getInitialTags(TagType tagType) {
    switch (tagType) {
      case TagType.post:
        return controller.postTags;
      default:
        return ['UI/UX', 'Motion Design'];
    }
  }

  void updateTags(TagType tagType, String tag) {
    switch (tagType) {
      case TagType.post:
        controller.updatePostTags(tag);
        break;
      default:
        break;
    }
  }
}
