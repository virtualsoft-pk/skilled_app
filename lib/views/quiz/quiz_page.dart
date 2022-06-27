import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:skilled_app/model/quiz_model.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

import '../../utils/app_colors.dart';
import '../../widgets/custom_button.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuiz = 0;
  List<List<String>> _quizSelectedOptions =
      List.generate(quizList.length, (index) => <String>[]);

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    Quiz _quiz = quizList[_currentQuiz];

    /// If user didn't selected any option yet than we will not include percentage of that
    /// quiz in total percent indicator
    var _percentIncrement = _quizSelectedOptions[_currentQuiz].isEmpty ? 0 : 1;
    var _percent = ((_currentQuiz + _percentIncrement) / quizList.length);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
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
                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              Text(
                quizList[_currentQuiz].title,
                style: GoogleFonts.manrope(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                /// If length of quiz options is less than 5 than
                /// we will show options as single tile
                /// otherwise options will be displayed as chips,
                /// multiple chips can be selected
                child: _quiz.options.length < 5
                    ? Column(
                        children: List.generate(
                            _quiz.options.length,
                            (index) => QuizOption(
                                  selected: _quizSelectedOptions[_currentQuiz]
                                      .contains(_quiz.options[index]),
                                  optionTxt: _quiz.options[index],
                                  onTap: () {
                                    setState(() {
                                      _quizSelectedOptions[_currentQuiz]
                                          .clear();
                                      _quizSelectedOptions[_currentQuiz]
                                          .add(_quiz.options[index]);
                                    });
                                  },
                                )),
                      )
                    : Wrap(
                        runSpacing: 10,
                        spacing: 10,
                        children: _quiz.options.map((e) {
                          return QuizChip(
                            selected:
                                _quizSelectedOptions[_currentQuiz].contains(e),
                            optionTxt: e,
                            // onTap: () {
                            //   setState(() {
                            //     _quizSelectedOptions[_currentQuiz]
                            //         .clear();
                            //     _quizSelectedOptions[_currentQuiz]
                            //         .add(_quiz.options[index]);
                            //   });
                            // },
                          );
                        }).toList(),
                      ),
              ),
              Row(
                children: [
                  Expanded(
                    child: LinearPercentIndicator(
                      // width: 100.0,
                      lineHeight: 4.0,
                      percent: _percent,
                      animateFromLastPercent: true,
                      progressColor: const Color(0xFF24AA24),
                      barRadius: const Radius.circular(20.0),
                      backgroundColor: greyColor,
                      addAutomaticKeepAlive: true,
                      animation: true,
                    ),
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
                        '${_currentQuiz + 1}',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: _quizSelectedOptions[_currentQuiz].isEmpty
                                ? Colors.grey
                                : const Color(0xFF24AA24)),
                      ),
                      Text(
                        "/${quizList.length}",
                        style: const TextStyle(
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
              CustomButton(
                text: "NEXT",
                funct: () {
                  if (_currentQuiz < quizList.length - 1) {
                    setState(() {
                      _currentQuiz++;
                    });
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class QuizOption extends StatelessWidget {
  const QuizOption(
      {required this.selected,
      required this.optionTxt,
      required this.onTap,
      Key? key})
      : super(key: key);

  final bool selected;
  final String optionTxt;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 340,
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: !selected ? Colors.white : containercolor,
          border: Border.all(
              color: !selected ? const Color(0xffD2D3D5) : Colors.black),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Text(optionTxt,
                  style: GoogleFonts.manrope(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            Checkbox(
              side: const BorderSide(color: borderColor),
              onChanged: (val) {},
              value: selected,
              activeColor: Colors.white,
              checkColor: grey900,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  side: const BorderSide(
                    color: checkColor,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizChip extends StatelessWidget {
  const QuizChip({required this.optionTxt, required this.selected, Key? key})
      : super(key: key);
  final String optionTxt;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return selected
        ? InkWell(
            onTap: (() {
              const Icon(Icons.clear);
            }),
            child: Chip(
              backgroundColor: containercolor,
              side: const BorderSide(color: Colors.black),
              labelPadding: const EdgeInsets.all(7),
              label: Text(optionTxt),
            ),
          )
        : InkWell(
            onTap: () {
              // multiChipEmptyList.add(e);
              // setState(() {});
            },
            child: Chip(
              labelPadding: const EdgeInsets.all(8),
              label: Text(optionTxt),
              // Icon(Icons.clear,size: 14,color: Colors.blue,),
              useDeleteButtonTooltip: true,
              deleteIcon: const Icon(
                Icons.clear,
                size: 14,
              ),

              deleteIconColor: Colors.green,
            ),
          );
  }
}
