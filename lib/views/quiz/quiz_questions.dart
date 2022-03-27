import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:skilled_app/views/quiz/select_interest.dart';
import 'package:skilled_app/views/quiz/quiz_start.dart';
import 'package:skilled_app/views/quiz/select_interest.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';


class QuizQuestions extends StatefulWidget {
  @override
  _QuizQuestionsState createState() => _QuizQuestionsState();
}

class _QuizQuestionsState extends State<QuizQuestions> {

  List<bool> value = [false, false, false, false];
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
                  SizedBox(height: screenheight * 0.02),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: CircleAvatar(
                          radius: 22.0,
                          backgroundColor: Colors.grey[200],
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenwidth * 0.3,
                      ),
                      Text(
                          "Quiz",
                          style: GoogleFonts.manrope(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: screenheight * 0.03,
                  ),
                  Text(
                      "How would your friends describe you?",
                      style: GoogleFonts.manrope(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: screenheight * 0.04,
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {

                        value = [false, false, false, false];

                        if (i == 0) {
                          i = -1;
                          value[0] = !value[0];
                        } else if (i == -1) {
                          i = 0;
                          value[0] = !value[0];
                        }
                      });
                    },
                    child: Container(
                      height: screenheight * 0.085,
                      width: screenwidth * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: value[0] == false ? Colors.white : containercolor,
                        border: Border.all(color: value[0] ?Colors.black: borderColor),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(
                                "Funny",
                                style: GoogleFonts.manrope(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          Checkbox(
                            side: BorderSide(color: borderColor),
                            onChanged: (val) {
                              setState(() {

                                value = [false, false, false, false];

                                if (i == 0) {
                                  i = -1;
                                  value[0] = !value[0];
                                } else if (i == -1) {
                                  i = 0;
                                  value[0] = !value[0];
                                }
                              });
                            },
                            value: value[0],
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
                    onTap: (){
                      setState(() {
                        value = [false, false, false, false];
                        if (i == 0) {
                          i = -1;
                          value[1] = !value[1];
                        } else if (i == -1) {
                          i = 0;
                          value[1] = !value[1];
                        }
                      });
                    },
                    child: Container(
                      height: screenheight * 0.076,
                      width: screenwidth * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: value[1] == false ? Colors.white : containercolor,
                          border: Border.all(color: value[1] ?Colors.black: borderColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(
                                "Intelligence",
                                style: GoogleFonts.manrope(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          Checkbox(
                            side: BorderSide(color: borderColor),
                            onChanged: (val) {
                              setState(() {
                                value = [false, false, false, false];
                                if (i == 0) {
                                  i = -1;
                                  value[1] = !value[1];
                                } else if (i == -1) {
                                  i = 0;
                                  value[1] = !value[1];
                                }
                              });
                            },
                            value: value[1],
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
                    onTap: (){
                      setState(() {
                        value = [false, false, false, false];
                        if(i == 0){
                          i = -1;
                          value[2] = !value[2];}
                        else if(i == -1){
                          i = 0;
                          value[2] = !value[2];}
                      });
                    },
                    child: Container(
                      height: screenheight * 0.076,
                      width: screenwidth * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: value[2] == false ? Colors.white : containercolor,
                          border: Border.all(color: value[2] ?Colors.black: borderColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(
                                "Creative",
                                style: GoogleFonts.manrope(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          Checkbox(
                            side: BorderSide(color: borderColor),
                            onChanged: (val) {
                              setState(() {
                                value = [false, false, false, false];
                                if(i == 0){
                                  i = -1;
                                  value[2] = !value[2];}
                                else if(i == -1){
                                  i = 0;
                                  value[2] = !value[2];}
                              });
                            },
                            value: value[2],
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
                    onTap: (){
                      setState(() {
                        value = [false, false, false, false];
                        if(i == 0){
                          i = -1;
                          value[3] = !value[3];}
                        else if(i == -1){
                          i = 0;
                          value[3] = !value[3];}
                      });
                    },
                    child: Container(
                      height: screenheight * 0.076,
                      width: screenwidth * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: value[3] == false ? Colors.white : containercolor,
                          border: Border.all(color: value[3] ?Colors.black: borderColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Text(
                                "Kind",
                                style: GoogleFonts.manrope(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          Checkbox(
                            side: BorderSide(color: borderColor),
                            onChanged: (val) {
                              setState(() {
                                value = [false, false, false, false];
                                if(i == 0){
                                  i = -1;
                                  value[3] = !value[3];}
                                else if(i == -1){
                                  i = 0;
                                  value[3] = !value[3];}
                              });
                            },
                            value: value[3],
                            activeColor: Colors.white,
                            checkColor: grey900,

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: BorderSide(
                                  color: borderColor,
                                )),

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
                          Text("1" , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , color: Colors.green),),
                          Text("/2" , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , color: grey600),)
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
            
                    CustomButton(text: "START QUIZ", funct: (){
                Get.to(()=>SelectInterest());
              },)
                ],
              ),
            ),
          ),
        ));
  }
}
