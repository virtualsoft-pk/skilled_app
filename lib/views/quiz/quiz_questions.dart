import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:skilled_app/views/quiz/select_interest.dart';
import 'package:skilled_app/views/quiz/quiz_start.dart';
import 'package:skilled_app/views/quiz/select_interest.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';
import 'package:black_hole_flutter/black_hole_flutter.dart';

class QuizQuestions extends StatefulWidget {
  @override
  _QuizQuestionsState createState() => _QuizQuestionsState();
}

class _QuizQuestionsState extends State<QuizQuestions> {
  int i = -1;

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    customBackButton(() {}),
                    Container(
                      margin: EdgeInsets.only(top: Get.height * 0.01),
                      child: Text(
                        "Quiz",
                        style: GoogleFonts.manrope(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.transparent,
                    )
                  ],
                ),
                SizedBox(
                  height: screenheight * 0.01,
                ),
                Text(
                  "How would your friends describe you?",
                  style: GoogleFonts.manrope(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.04,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      i = 0;
                      // if (i == 0) {
                      //   i = -1;
                      // } else if (i == -1) {
                      //   i = 0;
                      //   value[0] = !value[0];
                      // }
                    });
                  },
                  child: Container(
                    height: screenheight * 0.085,
                    width: screenwidth * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: i != 0 ? Colors.white : containercolor,
                      border: Border.all(
                          color: i != 0 ? Color(0xffD2D3D5) : Colors.black),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Text("Funny",
                              style: GoogleFonts.manrope(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                        Checkbox(
                          side: BorderSide(color: borderColor),
                          onChanged: (val) {
                            setState(() {
                              i = 0;

                              // if (i == 0) {
                              //   i = -1;
                              //   value[0] = !value[0];
                              // } else if (i == -1) {
                              //   i = 0;
                              //   value[0] = !value[0];
                              // }
                            });
                          },
                          value: i == 0,
                          activeColor: Colors.white,
                          checkColor: grey900,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(
                                color: checkColor,
                              )),

                          //fillColor: null,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.02,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      i = 1;
                      // if (i == 0) {
                      //   i = -1;
                      //   value[1] = !value[1];
                      // } else if (i == -1) {
                      //   i = 0;
                      //   value[1] = !value[1];
                      // }
                    });
                  },
                  child: Container(
                    height: screenheight * 0.076,
                    width: screenwidth * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: i != 1 ? Colors.white : containercolor,
                        border: Border.all(
                            color: i != 1 ? Color(0xffD2D3D5) : Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Text("Intelligence",
                              style: GoogleFonts.manrope(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                        Checkbox(
                          side: BorderSide(color: borderColor),
                          onChanged: (val) {
                            setState(() {
                              i = 1;
                              // value = [false, false, false, false];
                              // if (i == 0) {
                              //   i = -1;
                              //   value[1] = !value[1];
                              // } else if (i == -1) {
                              //   i = 0;
                              //   value[1] = !value[1];
                              // }
                            });
                          },
                          value: i == 1,
                          activeColor: Colors.white,
                          checkColor: grey900,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(
                                color: checkColor,
                              )),

                          //fillColor: null,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.02,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      i = 2;
                      // value = [false, false, false, false];
                      // if (i == 0) {
                      //   i = -1;
                      //   value[2] = !value[2];
                      // } else if (i == -1) {
                      //   i = 0;
                      //   value[2] = !value[2];
                      // }
                    });
                  },
                  child: Container(
                    height: screenheight * 0.076,
                    width: screenwidth * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: i != 2 ? Colors.white : containercolor,
                        border: Border.all(
                            color: i != 2 ? Color(0xffD2D3D5) : Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Text("Creative",
                              style: GoogleFonts.manrope(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                        Checkbox(
                          side: BorderSide(color: borderColor),
                          onChanged: (val) {
                            setState(() {
                              i = 2;
                              // value = [false, false, false, false];
                              // if (i == 0) {
                              //   i = -1;
                              //   value[2] = !value[2];
                              // } else if (i == -1) {
                              //   i = 0;
                              //   value[2] = !value[2];
                              // }
                            });
                          },
                          value: i == 2,
                          activeColor: Colors.white,
                          checkColor: grey900,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(
                                color: checkColor,
                              )),

                          //fillColor: null,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.02,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      i = 3;
                      // value = [false, false, false, false];
                      // if (i == 0) {
                      //   i = -1;
                      //   value[3] = !value[3];
                      // } else if (i == -1) {
                      //   i = 0;
                      //   value[3] = !value[3];
                      // }
                    });
                  },
                  child: Container(
                    height: screenheight * 0.076,
                    width: screenwidth * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: i != 3 ? Colors.white : containercolor,
                        border: Border.all(
                            color: i != 3 ? Color(0xffD2D3D5) : Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Text("Kind",
                              style: GoogleFonts.manrope(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                        Checkbox(
                          side: BorderSide(color: borderColor),
                          onChanged: (val) {
                            setState(() {
                              i = 3;

                              // value[3] = !value[3];
                              // i = 3;
                              // if (i == 0) {
                              //   i = -1;
                              //   value[3] = !value[3];
                              // } else if (i == -1) {
                              //   i = 0;
                              //   value[3] = !value[3];
                              // }
                            });
                          },
                          value: i == 3,
                          activeColor: Colors.white,
                          checkColor: grey900,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: BorderSide(
                              color: borderColor,
                            ),
                          ),

                          //fillColor: null,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          // height: 20,
                          child: LinearPercentIndicator(
                        // width: 100.0,
                        lineHeight: 4.0,
                        percent: 0.7,
                        progressColor: Colors.green,
                        barRadius: const Radius.circular(20.0),
                        backgroundColor: greyColor,
                        addAutomaticKeepAlive: true,
                        animationDuration: 1000,
                        animation: true,
                      )),
                    ),
                    // Container(
                    //   width: screenwidth * 0.8,
                    //   height: screenheight * 0.006,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(16),
                    //       color: Colors.green),
                    // ),
                    SizedBox(
                      width: screenwidth * 0.04,
                    ),
                    Row(
                      children: [
                        Text(
                          "1",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.green),
                        ),
                        Text(
                          "/2",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: grey600),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: screenheight * 0.03,
                ),
                // Container(
                //     width: screenwidth*3,
                //     height: screenheight*0.09,
                //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                //     child: CustomButton(text: "NEXT",funct: (){
                //       Get.to(Quiz03());
                //     })
                // )
                i == -1
                    ? Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 55,
                        width: double.infinity,
                        child: RaisedButton(
                          color: Color(0xffFEF1E5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          onPressed: () {},
                          child: Text(
                            'START QUIZ',
                            style: const TextStyle(
                              letterSpacing: 2,
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    : CustomButton(
                        text: "START QUIZ",
                        funct: () {
                          context.navigator.push<void>(
                            SwipeablePageRoute(
                              builder: (_) => SelectInterest(),
                            ),
                          );
                          // Get.to(() => SelectInterest());
                        },
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
