import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';

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
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: backButtonColor),
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
                  height: Get.height * 0.02,
                  width: Get.width * 0.05,
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
            padding: EdgeInsets.symmetric(horizontal: 20),
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
                careerListTile("Doctor"),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                careerListTile("Film maker"),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                careerListTile("UX Designer"),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                careerListTile("Musician"),
                SizedBox(
                  height: Get.height * 0.09,
                ),
                changeView
                    ? Container()
                    : ListTile(
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
            : FloatingActionButton(
                elevation: 5,
                backgroundColor: buttonColor,
                onPressed: () {
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
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ));
  }

  Container buttomSheet() {
    return Container(
      height: Get.height * 0.5,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Add Topics",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
                        )),
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
                  "Title",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Container(
                    child: TextFieldTags(

                        //     textSeparators: <String>[
                        //   //text tag seperators
                        //   //Default = " ", ","
                        // ],
                        // tags: <String>[
                        //   // List of tags
                        //   // Provide a list of initial tags to initialize it
                        // ],
                        textFieldStyler: TextFieldStyler(
                          //These are properties you can tweek for customization
                          textFieldBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                          hintText: "Topics name",
                          hintStyle: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),

                          // bool textFieldFilled = false,
                          // Icon icon,
                          // String helperText = 'Enter tags',
                          // TextStyle helperStyle,
                          // TextStyle hintStyle,
                          // EdgeInsets contentPadding,
                          // Color textFieldFilledColor,
                          // bool isDense = true,
                          // bool textFieldEnabled = true,

                          // OutlineInputBorder textFieldBorder = const OutlineInputBorder(),
                          // OutlineInputBorder textFieldFocusedBorder,
                          // OutlineInputBorder textFieldDisabledBorder,
                          // OutlineInputBorder textFieldEnabledBorder
                        ),
                        tagsStyler: TagsStyler(
                          //These are properties you can tweek for customization
                          tagTextStyle: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                          tagCancelIcon: Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                          tagDecoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15)),
                          //showHashtag = false,
                          //  EdgeInsets tagPadding = const EdgeInsets.all(4.0),
                          tagPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          // EdgeInsets tagMargin = const EdgeInsets.symmetric(horizontal: 4.0),
                          // BoxDecoration tagDecoration = const BoxDecoration(color: Color.fromARGB(255, 74, 137, 92)),

                          // TextStyle tagTextStyle,
                          // Icon tagCancelIcon = const Icon(Icons.cancel, size: 18.0, color: Colors.green)
                        ),
                        onTag: (tag) {},
                        onDelete: (tag) {},
                        validator: (tag) {
                          if (tag.length > 15) {
                            return "hey that's too long";
                          } else if (tag.isEmpty) {
                            return "enter something";
                          }
                        }
                        //tagsDistanceFromBorderEnd: 0.725,
                        //scrollableTagsMargin: EdgeInsets.only(left: 9),
                        //scrollableTagsPadding: EdgeInsets.only(left: 9),
                        )),
                Text(
                  "Suggestions from the top list:",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ],
            ),

            SizedBox(
              height: Get.height * 0.02,
            ),
            //Calling Chips form here..........................
            chipList(),

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
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container careerListTile(String name) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: Get.height * 0.09,
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
              ? Image.asset(
                  "assets/images/delete.png",
                  height: Get.height * 0.034,
                )
              : Image.asset(
                  "assets/images/question.png",
                  height: Get.height * 0.034,
                ),
        ],
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

  chipList() {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          _buildChip(
            'UX  Design',
          ),
          _buildChip(
            'Product design',
          ),
          _buildChip(
            'UX/ Design',
          ),
        ],
      ),
    );
  }
}
